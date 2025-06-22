import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:toastification/toastification.dart';

abstract class AppHelpers {
  AppHelpers._();

  static void errorToast({required BuildContext context, required String message}) {
    toastification.show(
      context: context,
      type: ToastificationType.error,
      style: ToastificationStyle.flat,
      title: Text(message),
      alignment: Alignment.topLeft,
      autoCloseDuration: const Duration(seconds: 4),
    );
  }

  static String errorHandler(e) {
    return (e.runtimeType == DioException)
        ? (e as DioException).response?.data["error"]
        : e.toString();
  }
}
