//class name person created where i made name string
class Person {
  String name;
  Person(this.name);
}

//In this main Function i created List people in person .
void main() {
  List<Person> people = [Person('Saadan'), Person('Mohsin'), Person('Atif')];
  people.sort((a, b) => a.name.compareTo(b.name));
  for (var person in people) {
    print(person.name);
  }

  print('-----');
//List of number created where i put 1 to 5 integers .
  List<int> number = [1, 2, 3, 4, 5];
//In this we are using map function to get every number square
//number*number calculates the square of each number
  List<int> squares = number.map((number) => number * number).toList();
  print(squares);

  print('-----');
//A strings name List created where it contains some words and fruits names
  List<String> strings = ['appple', 'bat', 'banana', 'cat', 'grape'];
//where method to create a new list called filteredStrings
//with this method i filtered the orignal list
//the condition str.length>=5 checks the length of the string
//toList() method convert the filtering output into a list.
  List<String> filteredStrings =
      strings.where((str) => str.length >= 5).toList();
  print(filteredStrings);

  print('-----');

  List<int> numbers = [1, 2, 3, 4, 5];
  int product = numbers.reduce((a, b) => a * b);
  print(product);

  print('-----');

  Map<String, int> map = {'apple': 90, 'banana': 60, 'mango': 100};
  map.forEach((key, value) {
    print('$key:$value');
  });
  print('-----');
//A list name fruits created which conatains some fruits names.
  List<String> fruits = ['banana', 'apple', 'grape', 'orange'];
//sort method used to rearrange the elements in alphabetical order.
  fruits.sort();
  print(fruits);
}
