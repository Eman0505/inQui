// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DetailAdapter extends TypeAdapter<Detail> {
  @override
  final int typeId = 1;

  @override
  Detail read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Detail()
      ..time = fields[0] as int
      ..correct = fields[1] as int
      ..wrong = fields[2] as int
      ..skip = fields[3] as int;
  }

  @override
  void write(BinaryWriter writer, Detail obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.time)
      ..writeByte(1)
      ..write(obj.correct)
      ..writeByte(2)
      ..write(obj.wrong)
      ..writeByte(3)
      ..write(obj.skip);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DetailAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
