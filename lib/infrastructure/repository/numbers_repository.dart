import 'dart:developer';

import 'package:dartz/dartz.dart';

import '../../domain/interface/numbers_interface.dart';
import '../../domain/model/common_response.dart';
import '../../domain/model/number_info.dart';
import '../app_helpers.dart';
import '../dependency_manager.dart';
import '../info_type.dart';

class NumbersRepository implements NumbersInterface {
  @override
  Future<Either<CommonResponse, dynamic>> fetchNumberInfo({
    required InfoType type,
    int? number,
  }) async {
    try {
      final response = await dioHttp.client().get(
        number != null
            ? '/$number/${type.name.toLowerCase()}'
            : '/random/${type.name.toLowerCase()}',
      );
      return left(CommonResponse.fromJson(response.data));
    } catch (e) {
      log('==> fetch number info failure: $e');
      return right(AppHelpers.errorHandler(e));
    }
  }

  @override
  Future<Either<bool, String>> saveNumberInfo(CommonResponse response) async {
    try {
      final numberInfo = NumberInfo.fromCommonResponse(response);
      await hiveService.saveNumberInfo(numberInfo);
      return left(true);
    } catch (e) {
      log('==> save number info failure: $e');
      return right('Failed to save number info: ${e.toString()}');
    }
  }

  @override
  Future<Either<List<NumberInfo>, String>> getSavedNumberInfo() async {
    try {
      final numberInfoList = await hiveService.getAllNumberInfo();
      return left(numberInfoList);
    } catch (e) {
      log('==> get saved number info failure: $e');
      return right('Failed to get saved number info: ${e.toString()}');
    }
  }

  @override
  Future<Either<bool, String>> deleteNumberInfo(int index) async {
    try {
      await hiveService.deleteNumberInfo(index);
      return left(true);
    } catch (e) {
      log('==> delete number info failure: $e');
      return right('Failed to delete number info: ${e.toString()}');
    }
  }

  @override
  Future<Either<bool, String>> clearAllNumberInfo() async {
    try {
      await hiveService.clearAllNumberInfo();
      return left(true);
    } catch (e) {
      log('==> clear all number info failure: $e');
      return right('Failed to clear all number info: ${e.toString()}');
    }
  }
}
