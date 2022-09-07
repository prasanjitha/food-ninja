import 'package:flutter_test/flutter_test.dart';
import 'package:food_ninja/math_util.dart';

void main() {
  test('Addintion ', () {
    var a = 10;
    var b = 10;

    var sum = add(a, b);

    expect(sum, 10);
  });
}
