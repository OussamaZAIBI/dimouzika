import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:form_validator/form_validator.dart';
import 'package:dimouzika/Views/signup/signup_firstpage.dart';
import 'package:dimouzika/Views/widgets/formspace.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:intl/intl.dart';

class signup extends StatefulWidget {
  const signup({Key? key}) : super(key: key);

  @override
  _signupState createState() => _signupState();
}

class _signupState extends State<signup> {
  final _formKey = GlobalKey<FormState>();
  final _NameCon = TextEditingController();
  final _LastNameCon = TextEditingController();
  final _BirthdayCon = TextEditingController();
  get Name => _NameCon.text;
  get LastName => _LastNameCon.text;
  get Birthday => _BirthdayCon.text;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF4A919E),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 10.w),
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                const SizedBox(height: 20.0),
                const Center(
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 40.0),
                formspace(
                  validationfield: ValidationBuilder().required().build(),
                  txt: 'First Name',
                  controller: _NameCon,
                ),
                const SizedBox(height: 15.0),
                formspace(
                    txt: 'Last Name',
                    validationfield: ValidationBuilder().required().build(),
                    controller: _LastNameCon),
                const SizedBox(height: 20.0),
                FormBuilderDateTimePicker(
                  controller: _BirthdayCon,
                  validator: (val) {
                    if (val == null) return 'Enter your Birthday';
                    return null;
                  },
                  firstDate: DateTime(1990),
                  lastDate: DateTime.now(),
                  inputType: InputType.date,
                  format: DateFormat("dd-MM-yyyy"),
                  decoration: InputDecoration(
                    errorStyle: TextStyle(
                      fontSize: 16,
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Color(0xFFF79532)),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "Select Date",
                    contentPadding: const EdgeInsets.only(
                        left: 14.0, bottom: 8.0, top: 8.0),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Color(0xFF60CFD6)),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  name: 'Birthday',
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 80.w,
                  padding: EdgeInsets.symmetric(vertical: 0.3.w),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color(0xFFF79532)),
                  child: TextButton(
                    onPressed: () async {
                      if (_formKey.currentState!.validate()) {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return signup_page(
                              name: Name,
                              lastname: LastName,
                              birthday: Birthday);
                        }));
                      }
                    },
                    child: const Text(
                      'Next',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFFFFFFF),
                        fontSize: 18,
                        fontFamily: 'IstokWeb',
                      ),
                    ),
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
