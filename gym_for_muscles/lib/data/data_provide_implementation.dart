import 'dart:convert';

import 'package:gym_for_muscles/Models/responseObject.dart';
import 'package:gym_for_muscles/data/data_provider.dart';
import 'package:http/http.dart' as http;

class DataProviderImplementation implements DataProvider {

  @override
  Future loadData() async {
   final response = await http.get('http://laurenandty.ca/workout_config.json');

  if (response.statusCode == 200) {
      return ResponseObject.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load config');
    }
  }
}