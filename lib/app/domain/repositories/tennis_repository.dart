import '../models/field_tennis_model.dart';
import '../models/user_tennis_field_model.dart';

abstract class TennisRepository {
  Future<void> initDatabase();
  Future<TennisFieldModel> findAll();
  Future<void> saveReservation(
    UserTennisFieldModel userTennisFieldModel,
  );

  Future<List<UserTennisFieldModel>> findAllReservation();

  Future<void> deleteReservation(UserTennisFieldModel userField);
}
