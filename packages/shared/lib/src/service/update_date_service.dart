class UpdateDateService{
  String? _userId;
  String? _nickname;
  String? _photoUrl;
  String? _aboutMe;

  String get userId {
    return _userId ?? '';
  }

  set userId(String name) {
    _userId = name;
  }

  String get nickname {
    return _nickname ?? '';
  }

  set nickname(String name) {
    _nickname = name;
  }

  String get photoUrl {
    return _photoUrl ?? '';
  }

  set photoUrl(String name) {
    _photoUrl = name;
  }

  String get aboutMe {
    return _aboutMe ?? '';
  }

  set aboutMe(String name) {
    _aboutMe = name;
  }
}