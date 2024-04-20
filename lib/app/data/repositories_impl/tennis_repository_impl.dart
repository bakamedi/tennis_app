import '../../domain/models/field_tennis_model.dart';
import '../../domain/repositories/tennis_repository.dart';
import '../data_source/local/local_service_db.dart';

class TennisRepositoryImpl extends TennisRepository {
  final LocalServiceDB _localServiceDB;

  TennisRepositoryImpl({
    required localServiceDB,
  }) : _localServiceDB = localServiceDB;

  @override
  Future<TennisFieldModel> findAll() async {
    return await _localServiceDB.findAll();
  }

  @override
  Future<void> initDatabase() async {
    await _localServiceDB.initializeDatabase();
  }
}
