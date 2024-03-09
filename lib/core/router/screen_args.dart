import 'package:bug_tracking/features/home/data/models/bugs_response_body.dart';
import 'package:bug_tracking/features/home/data/models/project_response_body.dart';

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

class ProjectBugsScreenArgs extends ScreenArgs {
  final List<BugModel> bugs;
  final String projectTitle;
  ProjectBugsScreenArgs(this.bugs, this.projectTitle);
}
