import 'list_node.dart';

void main() {
  var list = DoublyLinkedList<int>();

  list.add(10);
  list.add(20);
  list.add(30);
  list.add(40);

  print('Size of the list: ${list.size()}');

  print('List contains 20: ${list.contains(20)}');

  try {
    print('Value at index 2: ${list.get(2)}');
  } catch (e) {
    print(e);
  }

  list.insert(2, 25);

  print('Traversing forward:');
  list.traverseForward();

  print('Traversing backward:');
  list.traverseBackward();

  list.remove(20);

  print('List after removal: $list');
}
