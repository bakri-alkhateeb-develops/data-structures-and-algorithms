class Array<T> {
  final int length;
  final List<T> data;

  const Array({
    required this.length,
    required this.data,
  });

  T operator [](int index) {
    return data.elementAt(index);
  }

  void push(T element) {
    return data.add(element);
  }

  T removeAt(int index) {
    return data.removeAt(index);
  }

  T pop() {
    return data.removeLast();
  }
}
