import 'package:flutter/material.dart';
import 'package:noteapp/views/widget/Custom_button.dart';
import 'package:noteapp/views/widget/custom%20text%20field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: FormStateWidget(),
      ),
    );
  }
}

class FormStateWidget extends StatefulWidget {
  const FormStateWidget({super.key});

  @override
  State<FormStateWidget> createState() => _FormStateWidgetState();
}

class _FormStateWidgetState extends State<FormStateWidget> {
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  GlobalKey<FormState> formkey = GlobalKey();
  String? titile, subtitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: autovalidateMode,
      key: formkey,
      child: Column(
        children: [
          const SizedBox(
            height: 32,
          ),
          CustomTextField(
            onSaved: (value) {
              titile = value;
            },
            hint: 'Title',
            maxlines: 1,
          ),
          const SizedBox(
            height: 32,
          ),
          CustomTextField(
            onSaved: (value) {
              subtitle = value;
            },
            hint: 'Content',
            maxlines: 5,
          ),
          const SizedBox(
            height: 32,
          ),
          CustomButton(
            onTap: () {
              if (formkey.currentState!.validate()) {
                formkey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
          SizedBox(
            height: 32,
          )
        ],
      ),
    );
  }
}
