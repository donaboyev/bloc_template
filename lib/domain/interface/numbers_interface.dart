import 'package:dartz/dartz.dart';

import '../../infrastructure/info_type.dart';
import '../model/common_response.dart';

abstract class NumbersInterface {
  Future<Either<CommonResponse, dynamic>> fetchNumberInfo({
    required InfoType type,
    int? number,
  });
}
