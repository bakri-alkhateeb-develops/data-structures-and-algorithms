class Stack<T> {
  final List<T> _data = [];

  T? pop() {
    if (_data.isEmpty) {
      return null;
    }

    return _data.removeLast();
  }

  void push(T value) {
    _data.add(value);
  }

  T? peek() {
    if (_data.isEmpty) {
      return null;
    }

    return _data.last;
  }
}
