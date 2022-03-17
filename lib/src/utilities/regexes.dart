final regEmail = RegExp(
  r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$',
);
final regNumeric = RegExp(r"[0-9]+");
final regUsername = RegExp(r"^[a-z0-9]+(?:(\.|-|_)[a-z0-9]+)*$");
