import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import '../../../components/models/game_record.dart';
import '../../../components/models/user.dart';
import '../../../components/sizes/records/user_records_sizes.dart';
import '../../../redux/actions/users_actions.dart';
import '../../../redux/app_selectors.dart';
import '../../../redux/app_state.dart';
import '../level_select_field.dart';
import 'user_record_item.dart';

class UserRecords extends StatelessWidget {
  const UserRecords({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _UserRecordsViewModel? _viewModel;
    final _scrollController = ScrollController();
    void _addListener() {
      _scrollController.addListener(() {
        final currentPos = _scrollController.position.pixels;
        final maxExtent = _scrollController.position.maxScrollExtent;

        if (currentPos >= maxExtent && _viewModel != null) {
          if (_viewModel!.hasNextPage &&
              _viewModel!.cursor != null &&
              !_viewModel!.loading) {
            _viewModel!.changeLevel(
              _viewModel!.level,
              after: _viewModel!.cursor,
            );
          }
        }
      });
    }

    final size = MediaQuery.of(context).size;
    final sizes = UserRecordSizes.getUserRecordSizes(size.width);
    final mainSize = size.height * 0.8 - sizes.headerSize;
    final colorScheme = Theme.of(context).colorScheme;

    return StoreConnector<AppState, _UserRecordsViewModel>(
      distinct: true,
      converter: (store) => _UserRecordsViewModel.fromStore(store),
      onInit: (store) {
        _viewModel = _UserRecordsViewModel.fromStore(store);

        _addListener();
      },
      onDispose: (_) {
        _scrollController.dispose();
      },
      onWillChange: (_, viewModel) {
        _viewModel = viewModel;
      },
      builder: (_, viewModel) {
        return NotificationListener<SizeChangedLayoutNotification>(
          onNotification: (_) {
            _viewModel = viewModel;
            _addListener();
            return false;
          },
          child: SizeChangedLayoutNotifier(
            child: SizedBox(
              width: sizes.width,
              height: mainSize,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Text(
                        'Level: ',
                        style: TextStyle(
                          fontSize: sizes.fontSize,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Expanded(
                        child: LevelSelectField(
                          maxLevel: viewModel.user.maxLevel ?? 0,
                          loading: viewModel.loading,
                          changeLevel: viewModel.changeLevel,
                          fontSize: sizes.fontSize,
                        ),
                      )
                    ],
                  ),
                  SingleChildScrollView(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: sizes.borderWidth,
                          color: colorScheme.primary.value == 0xFF02569B
                              ? colorScheme.onSurface
                              : colorScheme.onPrimary,
                        ),
                        borderRadius: BorderRadius.circular(sizes.borderRadius),
                      ),
                      height: mainSize - sizes.fontSize * 2.5,
                      child: ListView.builder(
                        controller: _scrollController,
                        itemBuilder: (_, i) => UserRecordItem(
                          rank: i + 1,
                          record: viewModel.records[i],
                          ctx: context,
                        ),
                        itemCount: viewModel.records.length,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class _UserRecordsViewModel {
  final User user;
  final int level;
  final List<GameRecord> records;
  final bool hasNextPage;
  final bool loading;
  final String? cursor;
  final void Function(int, {String? after}) changeLevel;

  _UserRecordsViewModel({
    required this.user,
    required this.level,
    required this.records,
    required this.hasNextPage,
    required this.loading,
    required this.cursor,
    required this.changeLevel,
  });

  factory _UserRecordsViewModel.fromStore(Store<AppState> store) {
    final profile = selectUserProfile(store)!;
    final recordsList = profile.recordsList;

    return _UserRecordsViewModel(
      user: profile.user,
      level: recordsList.level,
      records: recordsList.records,
      hasNextPage: recordsList.hasNextPage,
      cursor: recordsList.cursor,
      loading: recordsList.loading,
      changeLevel: (level, {after}) => store.dispatch(
        loadProfileRecords(level, after: after),
      ),
    );
  }

  @override
  int get hashCode => (loading ? 1 : 0);

  @override
  bool operator ==(Object other) {
    return hashCode == other.hashCode;
  }
}
