import 'package:fci_att/core/cubit/app_cubit.dart';
import 'package:fci_att/core/cubit/app_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../data/model/attendance_model.dart';
import 'widgets/custom_student_card.dart';

class LectureAttendanceStudent extends StatelessWidget {
  const LectureAttendanceStudent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: BlocBuilder<AppCubit, AppState>(
          builder: (context, state) => Text(
            AppCubit.get(context).lectureNumber,
          ),
        ),
      ),
      body: BlocBuilder<AppCubit, AppState>(
        builder: (context, state) {
          return Padding(
              padding: const EdgeInsets.all(8.0),
           //  padding: EdgeInsets.only(left: 0.0, top: 5.0, right: 0.0, bottom: 7.0),
              child: CustomStudenctCard(
                name: AppCubit.get(context).studentData!.name!,
                status: AppCubit.get(context).studentData!.attend!,
                imagePath: AppCubit.get(context).studentData!.image!,
                
                date: AppCubit.get(context).studentData!.checkTime!,
              ));
        },
      ),
    );
  }
}

class StudentData {
  final String name;
  final String status;

  StudentData({required this.name, required this.status});
}
