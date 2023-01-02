import 'package:flutter/material.dart';
import 'package:structure_demo/generated/l10n.dart';
import 'package:structure_demo/view/utils/dialogs_manager.dart';

class ErrorManager {
  static Future<void> show({
    required BuildContext context,
    required String error,
  }) async {
    await DialogsManager.showOkDialog(
      context: context,
      message: error,
      title: S.current.appName,
    );
  }
}
