import 'dart:developer';

import 'package:dartz/dartz.dart';

import '../../domain/interface/numbers_interface.dart';
import '../../domain/model/common_response.dart';
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
}
