class User {
  var _name, _image, _message, _time;

  User.empty();

  User(this._name, this._image, this._message, this._time);

  get time => _time;

  set time(value) {
    _time = value;
  }

  get message => _message;

  set message(value) {
    _message = value;
  }

  get image => _image;

  set image(value) {
    _image = value;
  }

  get name => _name;

  set name(value) {
    _name = value;
  }
}
