void main() async {
  // Future.delayed(Duration(seconds: 2)).then((v) {
  //   print('Completed 1');
  //   Future.delayed(Duration(seconds: 3)).then((v) {
  //     print('Completed 2');
  //     Future.delayed(Duration(seconds: 1)).then((v) {
  //       print('Completed 3');
  //     });
  //   });
  // });

  await Future.delayed(Duration(seconds: 2));
  print('Completed 1');
  await Future.delayed(Duration(seconds: 1));
  print('Completed 2');
  await Future.delayed(Duration(seconds: 1));
  print('Completed 3');
}
