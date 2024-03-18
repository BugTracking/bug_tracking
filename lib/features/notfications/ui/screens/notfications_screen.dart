import 'package:bug_tracking/features/notfications/logic/cubit/notfication_cubit.dart';
import 'package:bug_tracking/features/notfications/logic/cubit/notfication_state.dart';
import 'package:bug_tracking/features/notfications/ui/widgets/notfications_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/di/dependency_injection.dart';

class NotficationsScreen extends StatelessWidget {
  const NotficationsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifications'),
      ),
      body: BlocProvider<NotficationCubit>(
        create: (context)=>getIt<NotficationCubit>()..emitNotficationState(),
        child: BlocBuilder<NotficationCubit, NotficationState>(
            builder: (context, state) {
              return Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 16.0.w,
                  vertical: 20.0.h,
                ),
                child: const NotficationList(),
              );
            }
        ),
      ),
    );
  }
}
