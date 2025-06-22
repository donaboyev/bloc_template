import 'package:dartz/dartz.dart';

import '../../infrastructure/info_type.dart';
import '../model/common_response.dart';
import '../model/number_info.dart';

abstract class NumbersInterface {
  Future<Either<CommonResponse, dynamic>> fetchNumberInfo({
    required InfoType type,
    int? number,
  });

  Future<Either<bool, String>> saveNumberInfo(CommonResponse response);

  Future<Either<List<NumberInfo>, String>> getSavedNumberInfo();

  Future<Either<bool, String>> deleteNumberInfo(int index);

  Future<Either<bool, String>> clearAllNumberInfo();
}
