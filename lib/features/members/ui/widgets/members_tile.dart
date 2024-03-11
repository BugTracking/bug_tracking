import 'package:bug_tracking/core/widgets/custom_member.dart';
import 'package:bug_tracking/features/home/data/models/user_response_body.dart';
import 'package:flutter/material.dart';

class MembersTile extends StatelessWidget {
   final UserModel members;
  const MembersTile({
  super.key, required this.members})
  ;

  @override
  Widget build(BuildContext context) {
    
   return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xffE9EAEC),
          width: 1,
        ),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: CustomMember(
        image: members.avatar!,
        name: members.name,
        body: members.email,
      ),
    );
  }
}