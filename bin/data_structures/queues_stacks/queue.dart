class Queue<T> {
  final List<T> _data = [];

  T? dequeue() {
    if (_data.isEmpty) {
      return null;
    }

    return _data.removeAt(0);
  }

  void enqueue(T value) {
    _data.add(value);
  }

  T? peek() {
    if (_data.isEmpty) {
      return null;
    }

    return _data.first;
  }
}
