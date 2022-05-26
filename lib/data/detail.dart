import 'package:hive/hive.dart';


part 'detail.g.dart';

@HiveType(typeId: 1)
class Detail extends HiveObject{
  @HiveField(0)
  late int time;

  @HiveField(1)
  late int correct;

  @HiveField(2)
  late int wrong;

  @HiveField(3)
  late int skip;  
}
