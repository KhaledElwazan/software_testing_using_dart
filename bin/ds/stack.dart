class Stack<Type> {
  List<Type> _container = List();

  void push(Type element) => _container.add(element);

  Type peak() {
    if (_container.isNotEmpty) return _container.last;
    return null;
  }

  Type pop() {
    if (_container.isEmpty) return null;
    return _container.removeLast();
  }

  int size() => _container.length;
}
