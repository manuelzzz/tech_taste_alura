import 'package:flutter_test/flutter_test.dart';
import 'package:myapp/model/dish.dart';
import 'package:myapp/ui/_core/bag_provider.dart';

void main() {
  final dish1 = Dish(
    id: "1",
    imagePath: "image_path",
    description: "Description",
    name: 'Dish',
    price: 10,
  );
  final dish2 = Dish(
    id: "2",
    imagePath: "image_path",
    description: "Description",
    name: 'Dish 2',
    price: 20,
  );

  late BagProvider bagProvider;

  setUp(() {
    bagProvider = BagProvider();
  });

  group('Testes de funcionamento de BagProvider', () {
    test('Bag deve inicializar vazia', () {
      expect(bagProvider.bag, isEmpty);
    });

    test('Adicionar uma refeição deve aumentar o tamanho da lista', () {
      bagProvider.addDish(dish1);

      expect(bagProvider.bag, contains(dish1));
      expect(bagProvider.bag.length, 1);
    });

    test('Remover uma refeição deve diminuir o tamanho da lista', () {
      bagProvider.addDish(dish1);
      bagProvider.removeDish(dish1);

      expect(bagProvider.bag, isNot(contains(dish1)));
      expect(bagProvider.bag.length, 0);
    });

    test('Adicionar múltiplas refeições deve aumentar o tamanho lista', () {
      bagProvider.addAllDishes([dish1, dish2]);

      expect(bagProvider.bag, containsAll([dish1, dish2]));
      expect(bagProvider.bag.length, 2);
    });

    test('Limpar a bag deve remover todas as refeições da lista', () {
      bagProvider.addAllDishes([dish1, dish2]);
      bagProvider.clearBag();

      expect(bagProvider.bag, isEmpty);
      expect(bagProvider.bag.length, 0);
    });
  });
}
