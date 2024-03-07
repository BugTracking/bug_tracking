import 'package:bug_tracking/core/widgets/add_container.dart';
import 'package:flutter/material.dart';

class AssignedToContainer extends StatelessWidget {
  const AssignedToContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // showModalBottomSheet(
        //   enableDrag: true,
        //   context: context,
        //   shape: const RoundedRectangleBorder(
        //     borderRadius: BorderRadius.zero,
        //   ),
        //   builder: (_) => AddProjectMembersSelection(
        //     context: context,
        //   ),
        // );
      },
      child: const AddContainer(
        title: 'Assigned To',
      ),
    );
  }
}
