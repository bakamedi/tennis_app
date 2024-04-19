import 'package:sembast/sembast.dart';

class LocalServiceDB {
  final Database _db;
  final StoreRef<Object?, Object?> _store;

  LocalServiceDB({
    required db,
    required store,
  })  : _db = db,
        _store = store;
}
