void main() {
  int add(int x, int y) => x + y;
  int multifly(int x, int y) => x * y;
  int quotient(int x, int y) => x ~/ y;

  int someFn(int Function(int, int) func, int a, int b) {
    return func(a, b);
  }

  int a, b;
  a = 5;
  b = 12;
  int result1 = someFn(add, a, b);
  print("$a + $b = $result1");

  a = 4;
  b = 6;
  int result2 = someFn(multifly, a, b);
  print("$a * $b = $result2");

  a = 5;
  b = 4;
  int result3 = someFn(quotient, a, b);
  print("$a / $b = (quo)$result3");
}
