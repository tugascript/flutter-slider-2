const kGqlCurrentUser = r'''
  query CurrentUser {
    me {
      id
      username
      picture
    }
  }
''';
