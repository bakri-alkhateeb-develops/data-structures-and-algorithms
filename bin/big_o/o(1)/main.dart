final List<int> arr1 = [0, 1, 2];
final List<int> arr2 = List.generate(100000, (_) => _);

void printFirstTwoElements(List<int> arr) {
  print(arr[0]);
  print(arr[1]);
}

void main() {
  printFirstTwoElements(arr1); // O(1) --> Constant Time
  printFirstTwoElements(arr2); // O(1) --> Constant Time
}
