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