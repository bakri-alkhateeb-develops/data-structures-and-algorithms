void main() {
  /*
  /// Static Array
  final List<int> integers = List<int>.generate(
    5,
    (index) => index + 1,
    growable: false,
  );

  /// Adding Not Allowed
  // integers.add(6);

  /// Deletion Not Allowed
  // integers.removeLast();

  /// Dynamic Array
  final List<String> strings = ['a', 'b', 'c', 'd'];

  // 4 * 4 = 16 bytes of storage

  print(strings);

  /// Adding an element
  strings.add("e"); // O(1)
  print(strings);

  /// Popping an element
  strings.removeLast(); // O(1)
  print(strings);

  /// Inserting an element
  strings.insert(0, "e"); // O(n)
  print(strings);

  /// Deleting an element
  strings.remove("e"); // O(n)
  print(strings);
     */

  // final String input = "Hi my name is Bakri Alkhateeb";

  // print(reverseString(input));

  final List<int> first = [1, 2, 3, 4, 5, 6];
  final List<int> second = [4, 5, 10, 20, 30, 40];

  print(mergeSortedArrays(first, second));
}

String reverseString(String input) {
  return input.split("").reversed.toList().join();
}

List<int> mergeSortedArrays(List<int> first, List<int> second) {
  final List<int> mergedLists = [...first, ...second];

  mergedLists.sort();

  return mergedLists;
}
