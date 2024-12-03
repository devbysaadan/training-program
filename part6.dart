// This is a custom exception class which handles specific errors
class CustomException implements Exception {
  final String message; // This will hold the error message
  CustomException(this.message); // Constructor to set the error message

  @override
  String toString() =>
      "CustomException: $message"; // This converts the error to text
}

// this function checks if the number is valid or not
void checkNumber(int number) {
  if (number < 0) {
    // it will throw a customexception if the number is negative
    throw CustomException("Number cannot be negative!");
  }
  // If the number is valid, we print it
  print("Number is valid: $number");
}

void main() {
  // Try to check a number that is invalid
  try {
    checkNumber(-7); // This will throw an exception
  } catch (e) {
    // If an error happens, this block will handle it
    print("Error caught: $e");
  } finally {
    // This block always runs, whether there's an error or not
    print("End of the first check.");
  }
  // Try to check a number that is valid
  try {
    checkNumber(10); // This won't throw any exception
  } catch (e) {
    // This will not work because their is no error
    print("Error caught: $e");
  } finally {
    // This block still runs
    print("End of the second check.");
  }
}
