void main() {
  Set<int> val = Set();
  val.add(12);
  val.add(24);
  val.add(67);
  val.remove(12);
  val.add(98);
  //val.clear();
  for (int ele in val) {
    print(ele);
  }
  Set<String> movies = Set.from(["Simba", "God Father", "Titanic"]);
  movies.add("Andhadhun");
  print(movies.contains("Simba"));
  for (String ele in movies) {
    print(ele);
  }
  movies.forEach((element) => print(element));
}
