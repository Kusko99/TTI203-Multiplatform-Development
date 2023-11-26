void main() {
  User userOne = User('luigi', 25);
  print(userOne.username);
  print(userOne.age);
  userOne.login();

  User userTwo = User('mario', 30);
  print(userTwo.username);

  SuperUser userThree = SuperUser('yoshi', 20);
  print(userThree.username);
  userThree.publish();
  userThree.login();
}

class User {
  String username = '';
  int age = 0;

  User(String username, int age) {
    this.username = username;
    this.age = age;
  }

  void login() {
    print('user logged in');
  }
}

class SuperUser extends User {
  String username = '';
  int age = 0;

  SuperUser(String username, int age) : super(username, age);

  void publish() {
    print('published update');
  }
}
