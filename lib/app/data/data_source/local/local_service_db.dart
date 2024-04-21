import 'dart:convert';

import 'package:sembast/sembast.dart';

import '../../../domain/models/field_tennis_model.dart';

const initalDB = {
  "fields": [
    {
      "id": "1",
      "name": "Césped",
      "state": "",
      "path": "assets/fields/grass.jpeg",
      "dates": [
        {
          "date": "2024-04-25 09:00:25.124723",
          "rain_probability": "65",
          "available": false
        },
        {
          "date": "2024-04-25 13:21:25.124765",
          "rain_probability": "10",
          "available": false
        },
        {
          "date": "2024-04-27 19:42:25.124789",
          "rain_probability": "74",
          "available": false
        },
        {
          "date": "2024-04-27 19:42:25.124815",
          "rain_probability": "5",
          "available": true
        },
        {
          "date": "2024-04-27 19:42:25.124837",
          "rain_probability": "86",
          "available": false
        }
      ]
    },
    {
      "id": "2",
      "name": "Arcilla",
      "state": "",
      "path": "assets/fields/clay.jpeg",
      "dates": [
        {
          "date": "2024-04-22 07:30:25.124860",
          "rain_probability": "4",
          "available": false
        },
        {
          "date": "2024-04-22 13:42:25.124882",
          "rain_probability": "64",
          "available": true
        },
        {
          "date": "2024-04-28 19:42:25.124903",
          "rain_probability": "85",
          "available": true
        },
        {
          "date": "2024-04-29 19:42:25.124924",
          "rain_probability": "45",
          "available": true
        },
        {
          "date": "2024-04-30 19:42:25.124945",
          "rain_probability": "98",
          "available": false
        }
      ]
    },
    {
      "id": "3",
      "name": "Dura",
      "state": "",
      "path": "assets/fields/hard.jpeg",
      "dates": [
        {
          "date": "2024-04-22 19:42:25.124968",
          "rain_probability": "15",
          "available": true
        },
        {
          "date": "2024-04-25 19:42:25.124990",
          "rain_probability": "23",
          "available": true
        },
        {
          "date": "2024-04-25 19:42:25.125011",
          "rain_probability": "80",
          "available": true
        },
        {
          "date": "2024-04-26 19:42:25.125041",
          "rain_probability": "34",
          "available": false
        },
        {
          "date": "2024-04-26 19:42:25.125063",
          "rain_probability": "81",
          "available": true
        }
      ]
    }
  ]
};

class LocalServiceDB {
  final Database _db;
  final StoreRef<Object?, Object?> _store;

  LocalServiceDB({
    required db,
    required store,
  })  : _db = db,
        _store = store;

  Future<TennisFieldModel> findAll() async {
    final record = (await _store.find(_db)).first;
    final values = json.encode(record.value);
    return tennisFieldModelFromJson(values);
  }

  Future<void> initializeDatabase() async {
    final count = await _store.count(_db);

    if (count == 0) {
      await _store.add(
        _db,
        initalDB,
      );
    }
  }
}
