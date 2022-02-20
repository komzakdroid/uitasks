class Account {
  var _email;
  var _password;

  Account.empty();

  Account(this._email, this._password);

  get password => _password;

  set password(value) {
    _password = value;
  }

  get email => _email;

  set email(value) {
    _email = value;
  }
}
