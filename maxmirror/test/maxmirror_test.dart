import 'package:test/test.dart';
import 'package:maxmirror/maxmirror.dart';
 
void main() {
  test('Caso base ejemplo 1', () {
    expect(maxMirror([1, 2, 3, 8, 9, 3, 2, 1]), equals(3));
  });
 
  test('Caso base ejemplo 2', () {
    expect(maxMirror([1, 2, 1, 4]), equals(3));
  });
 
  test('Caso base ejemplo 3', () {
    expect(maxMirror([7, 1, 2, 9, 7, 2, 1]), equals(2));
  });
 
  test('Arreglo vacío', () {
    expect(maxMirror([]), equals(0));
  });
 
  test('Arreglo con un solo número', () {
    expect(maxMirror([5]), equals(1));
  });
 
  test('Arreglo con todos iguales', () {
    expect(maxMirror([2, 2, 2, 2]), equals(4));
  });
 
  test('Arreglo simétrico completo', () {
    expect(maxMirror([1, 2, 3, 2, 1]), equals(5));
  });
  test ('Arreglo sin espejos', () {
    expect(maxMirror([1, 2, 3, 4, 5]), equals(1));
  });
}