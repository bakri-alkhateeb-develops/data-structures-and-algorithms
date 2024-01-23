class ListNode<T> {
  T value;
  ListNode<T>? next;

  ListNode({
    required this.value,
  });

  void add(T value) {
    if (next == null) {
      next = ListNode(value: value);
    } else {
      next!.add(value);
    }
  }

  void remove(T value) {
    if (next != null) {
      if (next!.value == value) {
        next = next!.next;
      } else {
        next!.remove(value);
      }
    }
  }

  void traverse() {
    print(this);

    if (next != null) {
      next!.traverse();
    }
  }

  bool isEmpty() => next == null;

  int size() {
    int count = 1;
    ListNode<T>? current = next;

    while (current != null) {
      count++;
      current = current.next;
    }

    return count;
  }

  bool contains(T value) {
    if (this.value == value) {
      return true;
    }

    if (next != null) {
      return next!.contains(value);
    }

    return false;
  }

  T get(int index) {
    if (index == 0) {
      return value;
    }

    if (next == null) {
      throw RangeError('Index out of bounds');
    }

    return next!.get(index - 1);
  }

  void insert(int index, T value) {
    if (index == 0) {
      final ListNode<T> newNode = ListNode(value: this.value);

      newNode.next = this.next;

      this.value = value;
      this.next = newNode;
    } else {
      if (next == null) {
        throw RangeError('Index out of bounds');
      }

      next!.insert(index - 1, value);
    }
  }

  ListNode<T>? lookup(T value) {
    if (this.value == value) {
      return this;
    }

    if (next == null) {
      return null;
    }

    return next!.lookup(value);
  }

  @override
  String toString() {
    if (next == null) {
      return '$value';
    }

    return '$value -> ${next.toString()}';
  }
}

class DoublyLinkedListNode<T> {
  T value;
  DoublyLinkedListNode<T>? next;
  DoublyLinkedListNode<T>? prev;

  DoublyLinkedListNode({
    required this.value,
    this.next,
    this.prev,
  });
}

class DoublyLinkedList<T> {
  DoublyLinkedListNode<T>? head;
  DoublyLinkedListNode<T>? tail;

  bool isEmpty() => head == null;

  void add(T value) {
    final newNode = DoublyLinkedListNode(value: value);

    if (head == null) {
      head = newNode;
      tail = newNode;
    } else {
      tail!.next = newNode;
      newNode.prev = tail;
      tail = newNode;
    }
  }

  bool remove(T value) {
    DoublyLinkedListNode<T>? current = head;

    while (current != null) {
      if (current.value == value) {
        if (current.prev != null) {
          current.prev!.next = current.next;
        } else {
          head = current.next;
        }

        if (current.next != null) {
          current.next!.prev = current.prev;
        } else {
          tail = current.prev;
        }

        return true;
      }

      current = current.next;
    }

    return false;
  }

  DoublyLinkedListNode<T>? find(T value) {
    DoublyLinkedListNode<T>? current = head;

    while (current != null) {
      if (current.value == value) {
        return current;
      }

      current = current.next;
    }

    return null;
  }

  int size() {
    int count = 0;
    DoublyLinkedListNode<T>? current = head;

    while (current != null) {
      count++;
      current = current.next;
    }

    return count;
  }

  bool contains(T value) {
    DoublyLinkedListNode<T>? current = head;

    while (current != null) {
      if (current.value == value) {
        return true;
      }

      current = current.next;
    }

    return false;
  }

  T get(int index) {
    int count = 0;

    DoublyLinkedListNode<T>? current = head;

    while (current != null) {
      if (count == index) {
        return current.value;
      }

      count++;
      current = current.next;
    }

    throw RangeError('Index out of bounds');
  }

  void insert(int index, T value) {
    if (index < 0 || (index > 0 && head == null)) {
      throw RangeError('Index out of bounds');
    }

    if (index == 0) {
      final newNode = DoublyLinkedListNode(value: value, next: head);

      if (head != null) {
        head!.prev = newNode;
      }

      head = newNode;

      tail ??= head;

      return;
    }

    DoublyLinkedListNode<T>? current = head;

    for (int i = 0; i < index - 1; i++) {
      if (current == null) {
        throw RangeError('Index out of bounds');
      }

      current = current.next;
    }

    final newNode = DoublyLinkedListNode(
      value: value,
      next: current!.next,
      prev: current,
    );

    if (current.next != null) {
      current.next!.prev = newNode;
    }

    current.next = newNode;

    if (newNode.next == null) {
      tail = newNode;
    }
  }

  void traverseForward() {
    DoublyLinkedListNode<T>? current = head;

    while (current != null) {
      print(current.value);
      current = current.next;
    }
  }

  void traverseBackward() {
    DoublyLinkedListNode<T>? current = tail;

    while (current != null) {
      print(current.value);
      current = current.prev;
    }
  }

  @override
  String toString() {
    var result = '';
    var current = head;

    while (current != null) {
      result += '${current.value} <-> ';
      current = current.next;
    }

    return result.isNotEmpty
        ? result.substring(0, result.length - 5)
        : 'Empty List';
  }
}
