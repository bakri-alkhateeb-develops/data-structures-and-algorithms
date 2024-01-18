// Log all pairs of array

final List<int> boxes = [1, 2, 3, 4, 5];

void logPairs(List<int> arr) {
  for (int i = 0; i < arr.length; i++) {
    for (int j = i + 1; j < arr.length; j++) {
      print("(${arr[i]}, ${arr[j]})");
    }
  }
}

void main() {
  logPairs(boxes); // O(n^2) --> Quadratic Time
}
