// ignore_for_file: file_names, constant_identifier_names
import 'package:flutter/cupertino.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:investor_quizapp/data/detail.dart';
import 'package:investor_quizapp/data/boxes.dart';

//NOTE: di dapat pwede lumagpas sa 10 yung correct
const PERSONAL_HISTORY = {
  var Box = Hive.box('details');
    int time = box.get('time');
    int correct = box.get('correct');
    int skip = box.get('skip');
    int wrong = box.get('wrong');
};
  