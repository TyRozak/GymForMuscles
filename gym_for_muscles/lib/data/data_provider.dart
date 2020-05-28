
import 'package:gym_for_muscles/Models/responseObject.dart';

abstract class DataProvider {
  Future<dynamic> loadData();
}