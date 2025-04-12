import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes_app/cubits/Add_notes_cubit.dart';
import 'package:notes_app/modal/NoteModal.dart';

import 'CustomButton.dart';
import 'customTextField.dart';

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
   bool isloading=false;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => AddNoteCubit(),
        child: BlocConsumer<AddNoteCubit, AddNoteState>(
          listener: (BuildContext context, state) {
            if (state is AddNoteFailure) {
              print('failed ${state.errMessage}  ');
            }
            if (state is AddNoteSuccess) {
              Navigator.pop(context);
            }
          },
          builder: (BuildContext context, state) {
            return AbsorbPointer(
              absorbing: state is AddNoteLoading ? true :false,
              child: Padding(
                padding:  EdgeInsets.only(left: 8.0,right:8,bottom: MediaQuery.of(context).viewInsets.bottom),
                child: SingleChildScrollView(
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
                        BlocBuilder<AddNoteCubit,AddNoteState>(
                          builder: ( context,  state) {
                            return   CustomButton(
                              isloading:state is AddNoteLoading ? true :false ,
                              action: 'Add',
                              onTap: () {
                                if (formKey.currentState!.validate()) {
                                  formKey.currentState!.save();

                                  var noteModel = NoteModal(
                                      title: title!,
                                      subtitle: con!,
                                      color: Colors.blue.value,
                                      date: DateTime.now().toString());
                                  BlocProvider.of<AddNoteCubit>(context)
                                      .AddNote(noteModel);
                                } else {
                                  autovalidateMode = AutovalidateMode.always;
                                }
                              },
                            );
                          },

                        ),
                        const SizedBox(
                          height: 10,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ));
  }
}
