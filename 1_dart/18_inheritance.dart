void main() {
  Student student = Student();
  student.setSemester = 2;
  student.setAge = 22;
  student.setName = "Ye";

  Person person = Person();
  person.setName = "Tekashi";
  person.setAge = 69;

  int semester = student.getSemester;

  print(semester);

  student.jump();
  student.study();
  student.run();
}

mixin Learner {
  void study() {
    print('study');
  }
}

mixin Jumper {
  void jump() {
    print("I can jump!");
  }
}

class Person {
  late String _name;
  late int _age;

  String get getName => this._name;
  int get getAge => this._age;

  set setName(String name) {
    this._name = name;
  }

  set setAge(int age) {
    this._age = age;
  }

  void run() {
    print('$_name runs!');
  }
}

class Student extends Person with Jumper, Learner {
  late int _semester;

  int get getSemester => this._semester;

  set setSemester(int semester) {
    this._semester = semester;
  }

  void party() {
    print('$_name is on a party!');
  }
}