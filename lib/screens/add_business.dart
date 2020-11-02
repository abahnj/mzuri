import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:mzuri/components/edit_app_bar.dart';

import '../constants.dart';
import 'business_details.dart';

class AddBusiness extends HookWidget {
  @override
  Widget build(BuildContext context) {
    var enabled = useState(true);

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(
                  width: 2,
                  color: Color(0xfff5a623),
                ),
              ),
            ),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: EditAppBar(
                      context: context, enabled: !enabled.value, onTap: null),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      spacerH32,
                      spacerH32,
                      spacerH32,
                      Text(
                        'Add Business',
                        style: formTitleStyle,
                      ),
                      spacerH32,
                      BusinessDetailsForm(
                        enabled: enabled,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
