import '../../core/typedefs.dart';

abstract class TennisRepository {
  FutureEither<dynamic, dynamic> save({
    String name,
    int num,
    int offset,
  });
}
