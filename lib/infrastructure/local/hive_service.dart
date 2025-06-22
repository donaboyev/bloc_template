import 'package:hive_flutter/hive_flutter.dart';

import '../../domain/model/number_info.dart';

class HiveService {
  static const String numberInfoBoxName = 'number_info_box';

  Future<Box<NumberInfo>> openNumberInfoBox() async {
    if (Hive.isBoxOpen(numberInfoBoxName)) {
      return Hive.box<NumberInfo>(numberInfoBoxName);
    }
    return await Hive.openBox<NumberInfo>(numberInfoBoxName);
  }

  Future<void> saveNumberInfo(NumberInfo info) async {
    final box = await openNumberInfoBox();
    await box.add(info);
  }

  Future<List<NumberInfo>> getAllNumberInfo() async {
    final box = await openNumberInfoBox();
    final list = box.values.toList();
    list.sort((a, b) => b.savedAt.compareTo(a.savedAt)); // Sort by date in descending order
    return list;
  }

  Future<void> deleteNumberInfo(int index) async {
    final box = await openNumberInfoBox();
    final list = box.values.toList();
    list.sort((a, b) => b.savedAt.compareTo(a.savedAt)); // Sort by date in descending order

    // Get the item at the sorted index
    final NumberInfo item = list[index];

    // Find the key of this item in the box
    final keys = box.keys.toList();
    final values = box.values.toList();

    for (int i = 0; i < values.length; i++) {
      if (values[i] == item) {
        await box.delete(keys[i]);
        break;
      }
    }
  }

  Future<void> clearAllNumberInfo() async {
    final box = await openNumberInfoBox();
    await box.clear();
  }
}
