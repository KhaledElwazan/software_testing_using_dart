import 'dart:collection' as collection;
import 'dart:math';
import 'ds/queue.dart';
import 'package:test/test.dart';

final int NUMBER_OF_TESTS = 100;

List<int> generateRandomList() {
  Random random = Random();
  List<int> list = List();
  for (var i = 0; i < NUMBER_OF_TESTS; i++) {
    list.add(random.nextInt(100));
  }
  return list;
}

void main() {
  group('Testing Queue', () {
    Queue<int> userDefinedQueue = Queue();
    List<int> randomList = generateRandomList();
    collection.Queue builtinQueue = collection.Queue<int>();

    group(':: enqueue function', () {
      for (var i = 0; i < NUMBER_OF_TESTS; i++) {
        var element = randomList[i];
        test('enqueue $element', () {
          userDefinedQueue.enqueue(element);
          builtinQueue.add(element);
          expect(userDefinedQueue.toList(), equals(builtinQueue.toList()));
        });
        test('size function', () {
          expect(userDefinedQueue.size(), equals(builtinQueue.length));
        });
      }
    });

    group(':: dequeue function', () {
      for (var i = 0; i < NUMBER_OF_TESTS; i++) {
        test(':: deque function', () {
          builtinQueue.remove(builtinQueue.first);
          userDefinedQueue.dequeue();
          expect(userDefinedQueue.toList(), builtinQueue.toList());
        });
        test('size function', () {
          expect(userDefinedQueue.size(), equals(builtinQueue.length));
        });
      }
    });
  });
}
