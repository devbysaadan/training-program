// Stack class to simulate Last-In-First-Out (LIFO) behavior
class Stack {
  List<int> stack = []; // List that holds the items in the stack

  // Method to add a new item to the stack
  void push(int value) {
    stack.add(value);
  }

  // Method to remove and return the top item from the stack
  int? pop() {
    if (stack.isEmpty) {
      return null;
    }
    return stack.removeLast(); // Remove and return the last item
  }

  // Method to see the top item without removing it
  int? peek() {
    return stack.isEmpty ? null : stack.last;
  }

  // Method to check if the stack is empty
  bool isEmpty() {
    return stack.isEmpty;
  }
}

// Queue class to simulate First-In-First-Out (FIFO) behavior
class Queue {
  List<int> queue = []; // List that holds the items in the queue

  // Method to add a new item at the end of the queue
  void enqueue(int value) {
    queue.add(value);
  }

  // Method to remove and return the first item from the queue
  int? dequeue() {
    if (queue.isEmpty) {
      return null;
    }
    return queue.removeAt(0); // Removes and returns the first item
  }

  // Method to see the first item without removing it
  int? peek() {
    return queue.isEmpty
        ? null
        : queue.first; // If the queue is not empty, return the first item
  }

  // Method to check if the queue is empty
  bool isEmpty() {
    return queue.isEmpty; // Returns true if the queue is empty
  }
}

// A simple Node class for Linked List
class Node {
  int value; // The value that the node holds
  Node? next; // Pointer to the next node
  Node(this.value); // Constructor to set the value of the node
}

// LinkedList class to hold nodes
class LinkedList {
  Node? head; // Points to the first node in the list

  // Method to add a new node at the start of the list
  void add(int value) {
    head = Node(value)..next = head; // Add a new node at the beginning
  }

  // Method to reverse the order of nodes in the list
  void reverse() {
    Node? prev = null, current = head;
    while (current != null) {
      Node? next = current.next; // Save the next node
      current.next = prev; // Reverse the pointer
      prev = current; // Move to the next node
      current = next; // Continue the loop
    }
    head = prev; // Now the head points to the new first node
  }

  // Method to print the values of the list
  void printList() {
    Node? n = head;
    while (n != null) {
      print(n.value); // Print the value of each node
      n = n.next; // Move to the next node
    }
  }
}

// Function to do binary search on a sorted list
int binarySearch(List<int> nums, int target) {
  int low = 0, high = nums.length - 1; // Set up the range of the list to search

  // Keep searching as long as there is still a range to search
  while (low <= high) {
    int mid = (low + high) ~/ 2; // Find the middle index

    if (nums[mid] == target) {
      return mid; // If the middle value matches the target, return its index
    }

    if (nums[mid] < target) {
      low = mid + 1; // If the middle value is less, search in the right half
    } else {
      high = mid - 1; // If the middle value is more, search in the left half
    }
  }
  return -1; // If not found, return -1
}

void main() {
  // Using the Stack class
  var stack = Stack();
  stack.push(10); // Add 10 to the stack
  stack.push(20); // Add 20 to the stack
  print("Stack top: ${stack.peek()}"); // Print the top item (20)
  print("Popped: ${stack.pop()}"); // Remove and print the top item (20)

  // Using the Queue class
  var queue = Queue();
  queue.enqueue(5); // Add 5 to the queue
  queue.enqueue(15); // Add 15 to the queue
  print("Queue front: ${queue.peek()}"); // Print the first item (5)
  print("Dequeued: ${queue.dequeue()}"); // Remove and print the first item (5)

  // Using the LinkedList class
  var list = LinkedList();
  list.add(1); // Add 1 to the list
  list.add(2); // Add 2 to the list
  print("Original LinkedList:");
  list.printList(); // Print the list (2, 1)
  list.reverse(); // Reverse the list
  print("Reversed LinkedList:");
  list.printList(); // Print the reversed list (1, 2)

  // Using Binary Search
  List<int> nums = [1, 2, 3, 4, 5]; // A sorted list
  int target = 3; // The number we want to find
  int result = binarySearch(nums, target); // Perform binary search
  print(
      "Binary search result: ${result != -1 ? 'Found at index $result' : 'Not found'}");
}
