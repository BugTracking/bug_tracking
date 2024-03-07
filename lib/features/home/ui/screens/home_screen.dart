import 'package:bug_tracking/core/data/app_data.dart';
import 'package:bug_tracking/core/helpers/show_bottom_sheet_function.dart';
import 'package:bug_tracking/core/helpers/spacing.dart';
import 'package:bug_tracking/core/style/app_color.dart';
import 'package:bug_tracking/core/style/app_texts.dart';
import 'package:bug_tracking/core/widgets/custom_shimmer.dart';
import 'package:bug_tracking/features/allprojects/ui/screens/allprojects_screen.dart';
import 'package:bug_tracking/features/home/logic/cubit/home_cubit.dart';
import 'package:bug_tracking/features/home/logic/cubit/home_state.dart';
import 'package:bug_tracking/features/home/ui/screens/home_body_screen.dart';
import 'package:bug_tracking/features/home/ui/widgets/add_bug_project_buttons.dart';
import 'package:bug_tracking/features/notfications/ui/screens/notfications_screen.dart';
import 'package:bug_tracking/features/settings/ui/screens/settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  List<Widget> screens = [
    const HomeBodyScreen(),
    const AllProjectsScreen(),
    const NotficationsScreen(),
    const SettingScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          if (userData.user.id == '') {
            return ListView.separated(
              itemBuilder: (context, index) => const CustomShimmer(),
              separatorBuilder: (context, index) => verticalSpace(10.0),
              itemCount: 30,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
            );
          }
          return screens[currentIndex];
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showCustomBottomSheet(context, const [
            AddBugProjectButtons(),
          ]);
        },
        shape: const CircleBorder(),
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: AppColor.bluish,
        unselectedItemColor: AppColor.greyish,
        selectedLabelStyle: AppTexts.text12PrimaryNunitoSansBold,
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.other_houses_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment_add),
            label: 'Projects',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notification',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
