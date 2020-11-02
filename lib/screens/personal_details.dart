import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../components/edit_app_bar.dart';
import '../components/input.dart';
import '../constants.dart';

class PersonalDetails extends HookWidget {
  @override
  Widget build(BuildContext context) {
    var enabled = useState(false);

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
                      context: context,
                      enabled: enabled.value,
                      onTap: () => enabled.value = !enabled.value),
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
                        'Personal Details',
                        style: formTitleStyle,
                      ),
                      spacerH32,
                      PersonalDetailsForm(
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

class PersonalDetailsForm extends StatefulWidget {
  final ValueNotifier<bool> enabled;

  const PersonalDetailsForm({Key key, this.enabled}) : super(key: key);

  @override
  _PersonalDetailsFormState createState() => _PersonalDetailsFormState();
}

class _PersonalDetailsFormState extends State<PersonalDetailsForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          Input(
            hintText: 'Name',
            init: 'Thomas Olatunji',
            enabled: widget.enabled.value,
          ),
          spacerH32,
          Input(
            hintText: 'Email',
            init: 'Thomas.Olatunji@gmail.com',
            keyboard: 'email',
            enabled: widget.enabled.value,
          ),
          spacerH32,
          Input(
            hintText: 'Phone Number',
            init: '08034229212',
            keyboard: 'number',
            enabled: widget.enabled.value,
          ),
          spacerH32,
          spacerH32,
          if (widget.enabled.value)
            Container(
              height: 50,
              width: double.infinity,
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    widget.enabled.value = !widget.enabled.value;
                  });
                },
                color: mzuriBlue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  'Save',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            )
        ],
      ),
    );
  }
}
