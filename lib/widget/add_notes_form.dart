import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_notes_cubit/add_notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widget/colors_list_view.dart';
import 'package:notes_app/widget/custem_button.dart';
import 'package:notes_app/widget/custem_text_field.dart';
import 'package:intl/intl.dart';

class AddNotesForm extends StatefulWidget {
  const AddNotesForm({super.key});

  @override
  State<AddNotesForm> createState() => _AddNotesFormState();
}

class _AddNotesFormState extends State<AddNotesForm> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          SizedBox(height: 16),
          CustemTextField(
            hintText: "العنوان ",
            onSaved: (value) {
              title = value;
            },
          ),
          SizedBox(height: 20),
          CustemTextField(
            hintText: "الملاحظات",
            maxLines: 5,
            onSaved: (value) {
              subTitle = value;
            },
          ),
          SizedBox(height: 32),
          ColorsListView(),
          SizedBox(height: 32),
          BlocBuilder<AddNotesCubit, AddNotesState>(
            builder: (context, state) {
              return CustemButton(
                isLoadin: (state is AddNotesLoading) ? true : false,
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    NoteModel note = NoteModel(
                      title: title!,
                      subTitle: subTitle!,
                      date: DateFormat("MMM dd, yyyy").format(DateTime.now()),
                      color: Colors.blue.hashCode,
                    );
                    BlocProvider.of<AddNotesCubit>(context).addNote(note);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
