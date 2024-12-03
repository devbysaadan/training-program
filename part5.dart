//printElements function can accept list of any data type because it is a
//generic function
void printElements<T>(List<T> list) {
  for (T element in list) {
    print(element);
  }
}

//This class can store two values
class Pair<T, U> {
  T first;
  U second;
  Pair(this.first, this.second);

  T getFirst() {
    return first;
  }

  U getSecond() {
    return second;
  }
}

//It creates two lists: one for integers and another for strings
//printElements this function print the element of the both class
void main() {
  List<int> numbers = [1, 2, 3, 4, 5];
  printElements(numbers);
  List<String> names = ['Mohsin', 'Atif', 'Saadan'];
  printElements(names);
}
