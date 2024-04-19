import '../../domain/repositories/tennis_repository.dart';
import '../data_source/local/local_service_db.dart';

class TennisRepositoryImpl extends TennisRepository {
  final LocalServiceDB _localServiceDB;

  TennisRepositoryImpl({
    required localServiceDB,
  }) : _localServiceDB = localServiceDB;

  @override
  void findAll() async {
    final response = await _localServiceDB.find();
    print(response);
  }
}
