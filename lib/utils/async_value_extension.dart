import 'package:deconz_app/utils/logger.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';

extension AsyncValueUI on AsyncValue {
  void detailWithResult<T>(
      {String message = 'Network error.',
      bool showLoading = true,
      required Function(T? data) result}) {
    logger.d("isLoading= $isLoading");
    if (isLoading) {
      SmartDialog.showLoading();
    } else {
      SmartDialog.dismiss();
      if (hasError) {
        SmartDialog.showToast(message, displayType: SmartToastType.normal);
      } else {
        if(requireValue != null) {
          result(requireValue);
        }
      }
    }
  }
}
