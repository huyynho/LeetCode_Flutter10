void main() {
  List<List<int>> input = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
  ];
  exercise1(input);

  List<Student> studentList = [
    Student('1', 'ABC', 18, 4),
    Student('2', 'EFG', 18, 5),
    Student('3', 'XYZ', 20, 9)
  ];

  Student.classifyStudent(studentList);
  Student.searchStudent(studentList, 'A');

  exercise3(12, 14);
  exercise4(1231231231231231231, 989898989898989898);
}

int exercise1(List<List<int>> input) {
  int sum = 0;
  int row = input.length;

  for (int i = 0; i < row; i++) {
    int column = input[i].length;

    if (column != row) {
      return -1;
    }

    for (int j = 0; j < column; j++) {
      if (i == j) {
        sum += input[i][j];
      }

      if (i == column - 1 - j && i != j) {
        sum += input[i][j];
      }
    }
  };

  print(sum);

  return sum;
}

class Student {
  String _id;
  String name;
  int age;
  double score;
  bool? graduate;

  Student(this._id, this.name, this.age, this.score, {this.graduate});

  String get id => _id;

  set id(String value) {
    id = value;
  }

  @override
  String toString() {
    return 'id: $id, name: $name, age: $age, score: $score, graduate: $graduate';
  }

  static List<Student> classifyStudent(List<Student> studentList) {
    studentList.forEach((student) {
      if (student.score >= 5) {
        student.graduate = true;
      } else {
        student.graduate = false;
      }
    });

    print(studentList);

    return studentList;
  }

  static List<Student> searchStudent(List<Student> studentList, String name) {
    List<Student> result = [];

    studentList.forEach((student) {
      if (student.name.toLowerCase().contains(name.toLowerCase())) {
        result.add(student);
      }
    });

    print(result);

    return result;
  }
}

int exercise3(int x, int y) {
  int sum = 0;

  if (x > y) return -1;

  for (int i = x; i <= y; i++) {
    if (i % 13 != 0) {
      sum += i;
    }
  }

  print(sum);
  return sum;
}

String exercise4(int inputA, int inputB) {
  int result = inputA + inputB;

  print(result.toString());

  return result.toString();
}
