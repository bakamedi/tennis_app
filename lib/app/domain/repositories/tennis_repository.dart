import '../models/field_tennis_model.dart';

abstract class TennisRepository {
  Future<void> initDatabase();
  Future<TennisFieldModel> findAll();
}
