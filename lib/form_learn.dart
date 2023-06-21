import 'package:flutter/material.dart';

class FormLearn extends StatefulWidget {
  const FormLearn({Key? key}) : super(key: key);

  @override
  State<FormLearn> createState() => _FormLearnState();
}

class _FormLearnState extends State<FormLearn> {
  final GlobalKey<FormState> _globalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        if(_globalKey.currentState?.validate() ?? false){
          print("Okey");
        }
      },child: const Text("Save")),
      body: SafeArea(
        child: Form(
          child: Column(
            children: [
              TextFormField(
                key: _globalKey,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: FormFieldValidator().isNotEmpty,
                onChanged: (String value){print("a");},
              ),
              TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: FormFieldValidator().isNotEmpty,
                onChanged: (String value){print("a");},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FormFieldValidator{
  String? isNotEmpty(String? data){
    return (data?.isNotEmpty ?? false) ? null : ValidatorMessage.notEmptyMessage;
  }
}

class ValidatorMessage{
  static const String notEmptyMessage = "Bu alan boş geçilemez!";
}