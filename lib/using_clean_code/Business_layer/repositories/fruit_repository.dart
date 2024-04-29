// fruit_repository.dart

import '../entities/fruit.dart';

abstract class FruitRepository {
  Future<List<Fruit>> fetchFruits();
}
