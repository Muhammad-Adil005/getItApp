// fruit_repository_impl.dart

import '../../Business_layer/entities/fruit.dart';
import '../../Business_layer/repositories/fruit_repository.dart';
import '../data_sources/remote_data_source.dart';

class FruitRepositoryImpl implements FruitRepository {
  final RemoteDataSource _fruitProvider;

  FruitRepositoryImpl(this._fruitProvider);

  @override
  Future<List<Fruit>> fetchFruits() async {
    try {
      final List<dynamic> fruitsData = await _fruitProvider.fetchFruits();
      return fruitsData.map((data) => Fruit.fromJson(data)).toList();
    } catch (e) {
      throw Exception('Failed to load data: $e');
    }
  }
}
