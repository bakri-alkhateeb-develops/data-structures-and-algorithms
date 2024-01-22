final class HashTable<T> {
  late final List<List> _data;

  HashTable({
    required int size,
  }) {
    _data = List<List>.generate(size, (index) => [], growable: false);
  }

  int _hash(String key) {
    int hash = 0;

    for (int i = 0; i < key.length; i++) {
      hash = (hash + key.codeUnits[i] * i) % _data.length;
    }

    return hash;
  }

  void set(String key, T value) {
    final index = _hash(key);

    _data[index].add(key);
    _data[index].add(value);
  }

  T get(String key) {
    final index = _hash(key);

    return _data[index][1];
  }

  @override
  String toString() {
    return _data.toString();
  }
}
