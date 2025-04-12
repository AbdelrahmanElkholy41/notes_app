import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes_app/cubits/Add_notes_cubit.dart';

import 'Custombutton.dart';
import 'customTextfield.dart';

class contentButtonSheet extends StatefulWidget {
  const contentButtonSheet({
    super.key,
  });

  @override
  State<contentButtonSheet> createState() => _ContentButtonSheetState();
}

class _ContentButtonSheetState extends State<contentButtonSheet> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  String? title;
  String? con;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: SingleChildScrollView(
        child: BlocConsumer(
          listener: (BuildContext context, state) {
            if (state is AddNoteFailure) {
              print('failed ${state.errMessage}  ');
            }
            if (state is AddNoteSuccess) {
              Navigator.pop(context);
            }
          },
          builder: (BuildContext context, state) {
            return ModalProgressHUD(
              inAsyncCall: state is AddNoteLoading ? true : false,
              child: Form(
                key: formKey,
                autovalidateMode: autovalidateMode,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 50,
                    ),
                    Customtextfield(
                        onSaved: (value) {
                          title = value;
                        },
                        hintText: 'Title'),
                    const SizedBox(
                      height: 30,
                    ),
                    Customtextfield(
                      hintText: 'description',
                      maxline: 5,
                      onSaved: (value) {
                        con = value;
                      },
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Custombutton(
                      action: 'Add',
                      onTap: () {
                        if (formKey.currentState!.validate()) {
                          formKey.currentState!.save();
                        } else {
                          autovalidateMode = AutovalidateMode.always;
                        }
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
