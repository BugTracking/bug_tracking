import 'package:bug_tracking/features/home/data/models/bugs_response_body.dart';
import 'package:bug_tracking/features/home/data/models/project_response_body.dart';
import 'package:bug_tracking/features/home/data/models/user_response_body.dart';

abstract class ScreenArgs {}

class ProjectDetailsScreenArgs extends ScreenArgs {
  final String projectId;
  final String projectTitle;
  final String projectStatus;

  ProjectDetailsScreenArgs(
    this.projectId,
    this.projectTitle,
    this.projectStatus,
  );
}

class ProjectsScreenArgs extends ScreenArgs {
  final List<ProjectModel> projects;

  ProjectsScreenArgs(this.projects);
}
class BugsScreenArgs extends ScreenArgs {
  final List<BugModel> bugs;

  BugsScreenArgs(this.bugs);
}
class MembersScreenArgs extends ScreenArgs {
  final List<UserModel> member;

  MembersScreenArgs(this.member);
}
