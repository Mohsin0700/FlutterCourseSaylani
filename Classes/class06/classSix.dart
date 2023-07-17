void main() {
  // Simple for loop is same as javascript.
  // We can define variable typing using int or any other keyword

  // int n = 2;
  // for (int i = 1; i <= 10; i++) {
  //   print('$n x $i = ${n * i}');
  // }

  // For in loop
  // List names = ['Mohsin', 'Arbab', 'Shakir', 'Adil', 'Hakim'];

  // for (var i in names) {
  // print('$i and ${names}');
  // }

  // Things are being cleared smoothly

  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  List<int> evens = [];
  List<int> odds = [];
  for (int i in numbers) {
    if (i % 2 == 0) {
      evens.add(i);
    } else if (i % 2 != 0) {
      odds.add(i);
    }
  }

  print(evens);
  print(odds);
}
