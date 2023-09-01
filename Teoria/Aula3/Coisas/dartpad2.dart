final f1 = () {
  print('f1');
}; //função sem nome

final f2 = () {
  print('f2');
  return "f2";
};

// final f3 = () => print("Daniel Briquez");

// final f3 = () {
//   return 2 + 2;
// };

final f3 = () => 2 + 2;

final f4 = () => {'nome': 'Ana'};

final f5 = () => {1, 2};

final f6 = (int a) {
  print(a);
};

final f7 = (f) {
  f();
};

void main() {
  f7(() => print('abc'));
  print(f1());
  print(f2());
  // print(f3());
  f3();
  print(f4());
  print(f5());
  print(f6(17));
}
