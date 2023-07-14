import 'package:flutter/material.dart';

import '../constant/const.dart';
import '../widgets_common/dropdown.dart';
import '../widgets_common/text_widget.dart';

class Services {
  static Future<void> showModalSheet({context}) async {
    await showModalBottomSheet(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(20),
          ),
        ),
        backgroundColor: scaffoldBackGroundColor,
        context: context,
        builder: (context) {
          return const Padding(
            padding: EdgeInsets.all(18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: TextWidget(
                    label: "Chosen Model:",
                    fontSize: 16,
                  ),
                ),
                Flexible(flex: 2, child: ModelsDropDownWidget()),
              ],
            ),
          );
        });
  }
}
