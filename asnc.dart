void main() async {
  dynamic kino = 'yuklanmagan';
  kino = await Future.delayed(Duration(seconds: 2)).then((a) => 'yaxshi kino');
  print(kino);
}
