import 'hash_table.dart';

void main() {
  final HashTable<int> ht = HashTable(size: 50);

  ht.set("grapes", 10000);
  ht.set("grapess", 20000);
  ht.set("grapesss", 30000);
  print(ht.get("grapes"));
  print(ht.get("grapess"));
  print(ht.get("grapesss"));
  print(ht);
}
