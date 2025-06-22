// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'number_info.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class NumberInfoAdapter extends TypeAdapter<NumberInfo> {
  @override
  final int typeId = 0;

  @override
  NumberInfo read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return NumberInfo(
      text: fields[0] as String?,
      number: fields[1] as int?,
      found: fields[2] as bool?,
      type: fields[3] as String?,
      savedAt: fields[4] as DateTime,
    );
  }

  @override
  void write(BinaryWriter writer, NumberInfo obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.text)
      ..writeByte(1)
      ..write(obj.number)
      ..writeByte(2)
      ..write(obj.found)
      ..writeByte(3)
      ..write(obj.type)
      ..writeByte(4)
      ..write(obj.savedAt);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NumberInfoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}