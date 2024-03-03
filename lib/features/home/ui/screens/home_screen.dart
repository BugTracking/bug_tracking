import 'package:bug_tracking/core/helpers/show_bottom_sheet_function.dart';
import 'package:bug_tracking/core/helpers/spacing.dart';
import 'package:bug_tracking/core/style/app_texts.dart';
import 'package:bug_tracking/core/widgets/custom_buttom_Navigation.dart';
import 'package:bug_tracking/features/home/ui/widgets/add_radio_list.dart';
import 'package:bug_tracking/features/home/ui/widgets/bug_project_containers.dart';
import 'package:bug_tracking/features/home/ui/widgets/latest_bugs.dart';
import 'package:bug_tracking/features/home/ui/widgets/latest_bugs_list.dart';
import 'package:bug_tracking/features/home/ui/widgets/latest_projects.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home',style: AppTexts.text21OnBackgroundColorNunitoSansBold,),
      ),
      body: Padding(
        padding:  EdgeInsets.all(8.0.w),
        child: Column(
          children: [
            const BugProjectContainers(),
            verticalSpace(20),
            //LatestProjects(),
            LatestBugs(),
          ],

        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
         showCustomBottomSheet(context,const[AddRadioList()]);
        },
        shape: const CircleBorder(),
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      bottomNavigationBar: const CustomButtomNavigation(),
    );
  }
}
