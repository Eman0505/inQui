import 'package:hive/hive.dart';
import 'package:investor_quizapp/data/detail.dart';

class Boxes {
  static Box<Detail> getDetails() => Hive.box<Detail>('details');
}
