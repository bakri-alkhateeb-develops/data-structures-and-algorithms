final List<String> nemo = ['not nemo', 'not nemo', 'nemo'];
final List<String> nemo2 = List.generate(100000, (_) => "nemo");

void findNemo(List<String> arr) {
  for (int i = 0; i < arr.length; i++) {
    if (arr[i] == "nemo") {
      print("Found Nemo");
    }
  }
}

void main() {
  findNemo(nemo); // O(n) --> Linear Time
  findNemo(nemo2); // O(n) --> Linear Time
}
