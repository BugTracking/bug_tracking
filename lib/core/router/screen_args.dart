abstract class ScreenArgs {}

class ProjectDetailsScreenArgs extends ScreenArgs {
  final String projectId;
  final String projectTitle;
  ProjectDetailsScreenArgs(this.projectId, this.projectTitle);
}
