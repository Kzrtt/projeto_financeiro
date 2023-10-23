import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:projeto_financeiro/utils/constants/appPalette.dart';
import 'package:projeto_financeiro/utils/constants/appRoutes.dart';
import 'package:projeto_financeiro/utils/globalTabValue.dart';
import 'package:projeto_financeiro/screens/homeTab/addictionControllScreen.dart';
import 'package:projeto_financeiro/screens/homeTab/expensesControl.dart';
import 'package:projeto_financeiro/screens/homeTab/homeScreen.dart';
import 'package:projeto_financeiro/screens/homeTab/profileScreen.dart';

class HomeTabScreen extends StatefulWidget {
  const HomeTabScreen({super.key});

  @override
  State<HomeTabScreen> createState() => _HomeTabScreenState();
}

class _HomeTabScreenState extends State<HomeTabScreen> {
  int _currentIndex = 0;
  final globalTabValue = GlobalTabValue();

  BottomNavigationBarItem buildItem(
    IconData icon,
    int index,
    String label,
  ) {
    return BottomNavigationBarItem(
      icon: Ink(
        width: 50,
        height: 30,
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          color: _currentIndex == index
              ? AppPalette.PRIMARY_COLOR
              : Colors.transparent,
        ),
        child: Icon(
          icon,
          size: 23,
        ),
      ),
      label: label,
    );
  }

  Widget get bottomNavigationBar {
    return BottomNavigationBar(
      elevation: 6,
      backgroundColor: Colors.white,
      selectedItemColor: Colors.white,
      iconSize: 28,
      unselectedItemColor: const Color.fromRGBO(0, 0, 0, 0.58),
      showSelectedLabels: false,
      showUnselectedLabels: false,
      type: BottomNavigationBarType.fixed,
      currentIndex: _currentIndex,
      onTap: (index) {
        setState(() {
          _currentIndex = index;
          globalTabValue.tabValue = index;
        });
      },
      items: [
        buildItem(Icons.home, 0, 'home'),
        buildItem(Icons.timer, 1, 'histórico'),
        buildItem(Icons.done, 2, 'blank'),
        buildItem(Icons.person, 3, 'perfil'),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        bottomNavigationBar: bottomNavigationBar,
        backgroundColor: AppPalette.BACKGROUND_COLOR,
        body: LayoutBuilder(
          builder: (context, constraints) {
            List<Widget> homeScreens = [
              HomeScreen(constraints: constraints),
              AddictionControllScreen(constraints: constraints),
              ExpensesControl(constraints: constraints),
              ProfileScreen(constraints: constraints),
            ];

            return SizedBox(
              height: constraints.maxHeight,
              width: constraints.maxWidth,
              child: homeScreens[_currentIndex],
            );
          },
        ),
        floatingActionButton: _currentIndex == 3 || _currentIndex == 0
            ? Center()
            : FloatingActionButton(
                backgroundColor: Colors.white,
                child: const Icon(
                  Icons.add,
                  color: AppPalette.PRIMARY_COLOR,
                ),
                onPressed: () {
                  if (_currentIndex == 1) {
                    Navigator.of(context).pushNamed(AppRoutes.ADD_ADDICTION);
                  } else if (_currentIndex == 2) {
                    Navigator.of(context).pushNamed(AppRoutes.ADD_EXPENSE);
                  }
                },
              ),
      ),
    );
  }
}
