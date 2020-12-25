class Queue<Type> {
  List<Type> _container = List();

  void enqueue(Type element) => _container.add(element);

  Type dequeue() {
    if (_container.isEmpty) return null;
    return _container.removeAt(0);
  }

  List toList() => _container;

  int size() => _container.length;
}
