import 'dart:convert';

import 'package:bloc_freezed_auto_route/models/data_model.dart';
import 'package:http/http.dart' as http;

class GameRepo {
  Future<List<DataModel>?> getGamesData() async {
    String url = 'http://www.gamerpower.com/api/giveaways';
    final result = await http.Client().get(Uri.parse(url));
    if (result.statusCode != 200) {
      return null;
    } else {
      Iterable models = jsonDecode(result.body);
      List<DataModel> dataModels = [];
      for (var model in models) {
        dataModels.add(DataModel.fromJson(model));
      }

      return dataModels;
    }
  }
}
