Future<Map<String, String>> Login() {
  return Future.delayed(Duration(seconds: 2)).then((v) {
    return {'id': 'khuuniv', 'token': 'token123'};
  });
}

Future<Map<String, String>> ProfileInfo(String id) async {
  return await Future.delayed(Duration(seconds: 1)).then((v) {
    return {'id': id, 'name': 'Tom Holland'};
  });
}

Future<List<String>> Notifi() async {
  return await Future.delayed(Duration(milliseconds: 1500)).then((v) {
    return ['noti 1', 'noti 2', 'noti 3'];
  });
}

void main() async {
  var result = await Login();
  print('Logged in: $result');
  var info = await ProfileInfo(result['id']!);
  print('User Profile: $info');
  var noti = await Notifi();
  print('Notifications: $noti');
}
