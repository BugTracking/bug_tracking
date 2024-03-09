import 'package:bug_tracking/features/allprojects/logic/cubit/projects_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProjectsCubit extends Cubit<ProjectStates> {
  ProjectsCubit() : super(const ProjectStates.initial());
}
