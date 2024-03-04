import 'package:bug_tracking/core/widgets/add_container.dart';
import 'package:bug_tracking/features/add_bug/ui/widgets/members_selection_bottom_sheet.dart';
import 'package:flutter/material.dart';

class AddMembersContainer extends StatelessWidget {
  const AddMembersContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showModalBottomSheet(
          enableDrag: true,
          context: context,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.zero,
          ),
          builder: (context) => const MembersSelectionBottomSheet(),
        );
      },
      child: const AddContainer(
        title: 'Add Members',
      ),
    );
  }
}
