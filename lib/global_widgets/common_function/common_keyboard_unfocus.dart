import 'package:flutter/material.dart';

/// **********************************************************************
///
/// await KeyboardUnfocus.dismissKeyboard(context);
///
/// **********************************************************************/

class KeyboardUnfocus {
  static Future<void> dismissKeyboard(BuildContext context) async {
    FocusScopeNode currentFocus = FocusScope.of(context);

    if (!currentFocus.hasPrimaryFocus) {
      currentFocus.unfocus();
    }
  }
}
