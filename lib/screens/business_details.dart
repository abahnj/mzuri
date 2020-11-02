import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../components/edit_app_bar.dart';
import '../components/input.dart';
import '../constants.dart';

class BusinessDetails extends HookWidget {
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
                    onTap: () => Navigator.pushNamed(context, 'addBusiness'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      spacerH32,
                      spacerH32,
                      spacerH32,
                      Text(
                        'Business Details',
                        style: formTitleStyle,
                      ),
                      spacerH32,
                      Image.asset(
                        'assets/business_logo.png',
                        fit: BoxFit.cover,
                        height: 70,
                        width: 70,
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

enum BusinessType { SoleProprietorship, Partnership, Corporation, LLC }
enum Industry { FashionDesign, Engineering, IT, Logistics }
enum state { Lagos, Enugu, Abuja }

class BusinessDetailsForm extends StatefulWidget {
  final ValueNotifier<bool> enabled;

  const BusinessDetailsForm({Key key, this.enabled}) : super(key: key);

  @override
  _BusinessDetailsFormState createState() => _BusinessDetailsFormState();
}

class _BusinessDetailsFormState extends State<BusinessDetailsForm> {
  final _formKey = GlobalKey<FormState>();
  var selectedBusinessType = BusinessType.SoleProprietorship;
  var selectedIndustry = Industry.FashionDesign;
  var selectedState = state.Lagos;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          Input(
            hintText: 'Business Name',
            init: 'Boldseams Stitches',
            enabled: widget.enabled.value,
          ),
          /*spacerH32,
          if (widget.enabled.value)
            TextField(
              decoration: InputDecoration(
                border: widget.enabled.value
                    ? OutlineInputBorder()
                    : UnderlineInputBorder(),
                labelText: 'Upload your company logo',
                hintText: 'Upload your company logo',
                labelStyle: TextStyle(
                  color: widget.enabled.value ? Colors.black : Colors.black,
                ),
                prefixIcon: Icon(
                  Icons.image_outlined,
                  size: 36,
                  color: Colors.grey,
                ),
                isDense: true,
                enabled: widget.enabled.value,
              ),
            ),*/
          if (widget.enabled.value) spacerH32,
          if (widget.enabled.value)
            InkWell(
              onTap: () {},
              child: Container(
                height: 75,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/image_outline.png',
                        height: 32,
                        width: 32,
                      ),
                      SizedBox(width: 10),
                      Text('Upload your company logo')
                    ],
                  ),
                ),
              ),
            ),
          if (widget.enabled.value) spacerH32,
          DropdownInput(
            enabled: widget.enabled.value,
            items: BusinessType.values,
            selectedValue: selectedBusinessType,
            hintText: 'Business Type',
          ),
          spacerH32,
          DropdownInput(
            enabled: widget.enabled.value,
            items: Industry.values,
            selectedValue: selectedIndustry,
            hintText: 'Industry',
          ),
          spacerH32,
          Input(
            hintText: 'Industry',
            init: 'Fashion Design',
            enabled: widget.enabled.value,
          ),
          spacerH32,
          Input(
            hintText: 'RC Number',
            init: 'FS-906374',
            enabled: widget.enabled.value,
          ),
          spacerH32,
          Input(
            hintText: 'Email',
            init: 'b.stitches@gmail.com',
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
          Input(
            hintText: 'Country',
            init: 'Nigeria',
            enabled: widget.enabled.value,
          ),
          spacerH32,
          DropdownInput(
            hintText: 'State',
            items: state.values,
            selectedValue: selectedState,
            enabled: widget.enabled.value,
          ),
          spacerH32,
          Input(
            hintText: 'Local Government',
            init: 'Ijaye',
            enabled: widget.enabled.value,
          ),
          spacerH32,
          Input(
            hintText: 'Address',
            init: '5 Abiola Way, Ikeja',
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
                    Navigator.pop(context);
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
