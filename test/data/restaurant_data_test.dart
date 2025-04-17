import 'package:flutter_test/flutter_test.dart';
import 'package:myapp/data/restaurant_data.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  late RestaurantData restaurantData;

  setUp(() {
    restaurantData = RestaurantData();
  });

  group('Testes de funcionamento de RestaurantData', () {
    test('Lista de restaurantes deve inicializar vazia', () {
      expect(restaurantData.listRestaurant, isEmpty);
    });

    test('Deve carregar restaurantes do arquivo JSON', () async {
      await restaurantData.getRestaurants();

      expect(restaurantData.listRestaurant, isNotEmpty);
      expect(restaurantData.listRestaurant.length, greaterThan(0));
      expect(restaurantData.listRestaurant.first.id, isNotNull);
      expect(restaurantData.listRestaurant.first.name, isNotNull);
    });

    test('Deve carregar restaurantes corretamente', () async {
      await restaurantData.getRestaurants();

      final firstRestaurant = restaurantData.listRestaurant.first;

      expect(firstRestaurant.id, isNotNull);
      expect(firstRestaurant.name, isNotNull);
    });
  });
}
