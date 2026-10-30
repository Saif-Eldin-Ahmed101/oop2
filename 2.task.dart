abstract class Person
{
  String name;
  String address;

  Person({required this.name, required this.address});

  String toString();
}

class Student extends Person
{
  int numCourses = 0 ;
  List <String> courses = [];
  List <int> grades = [];

  Student({required super.name, required super.address});
  @override
  String toString()
  {
    return " student: name => $name ; address => $address ";
  }
  void addCourseGrade(String course , int grade)
  {
    courses.add(course);
    grades.add(grade);
    numCourses++;
  }
  void printGrades()
  {
    for (int i = 0 ; i < grades.length ; i++)
      {
        print("${courses[i]} : ${grades[i]}");
      }
  }
  double getAverageGrade()
  {
    if (grades.isEmpty)
      {
        return 0.0;
      }
    int sum = 0 ;
    for (int i= 0 ; i < grades.length ; i++)
      {
        sum += grades[i];
      }
    return sum / grades.length ;
  }
}

class Teacher extends Person
{
  int numCourses = 0;
  List <String> courses = [];

  Teacher({required super.name, required super.address});

  @override
  String toString() {
    return "Teacher: name =>$name ; address =>$address";
  }
  bool addCourse(String course)
  {
    bool test = true;
    String upperCourse = course.toUpperCase();
    for (int i =0 ; i < courses.length ; i++)
      {
        if ( upperCourse == courses[i])
          {
            test = false;
          }
      }
    if (test == true)
      {
        courses.add(upperCourse);
        numCourses++;
      }
    return test;
  }
  bool removeCourse(String course)
  {
    bool test = false;
    String upperCourse = course.toUpperCase();
    for (int i =0 ; i < courses.length ; i++)
      {
        if (upperCourse == courses[i])
        {
          courses.removeAt(i);
          numCourses--;
          test = true;
          break;
        }
      }
    return test;
  }
}

void main() {
  Student student = Student(name: "Saif", address: "Assiut");

  print(student.toString());

  student.addCourseGrade("Dart", 90);
  student.addCourseGrade("C#", 85);
  student.addCourseGrade("SQL", 95);

  print("Student Grades:");
  student.printGrades();

  print("Number of Courses: ${student.numCourses}");
  print("Average Grade: ${student.getAverageGrade()}");


  Teacher teacher = Teacher(name: "Ahmed", address: "Cairo");

  print(teacher.toString());

  print("Add Dart: ${teacher.addCourse("Dart")}");
  print("Add C#: ${teacher.addCourse("C#")}");
  print("Add Dart Again: ${teacher.addCourse("dart")}");

  print("Teacher Courses: ${teacher.courses}");
  print("Number of Courses: ${teacher.numCourses}");

  print("Remove Dart: ${teacher.removeCourse("DART")}");
  print("Remove Python: ${teacher.removeCourse("Python")}");

  print("Teacher Courses: ${teacher.courses}");
  print("Number of Courses: ${teacher.numCourses}");
}
