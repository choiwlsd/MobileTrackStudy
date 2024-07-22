void Login(void Function(Map<String, String>) callback) {
  Future.delayed(Duration(seconds: 2)).then((v) {
    callback({'id': 'khuuniv', 'token': 'token123'});
  });
}

void ProfileInfo(String id, void Function(Map<String, String>) callback) {
  Future.delayed(Duration(seconds: 1)).then((v) {
    callback({'id': id, 'name': 'Tom Holland'});
  });
}

void Notifi(void Function(List<String>) callback) {
  Future.delayed(Duration(milliseconds: 1500)).then((v) {
    callback(['noti 1', 'noti 2', 'noti 3']);
  });
}

void main() {
  Login((result) {
    print('Logged in: $result');

    ProfileInfo(result['id']!, (profile) {
      print('User Profile: $profile');
    });

    Notifi((noti) {
      print('Notifications: $noti');
    });
  });
}
