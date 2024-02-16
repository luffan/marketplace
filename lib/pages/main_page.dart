import 'package:flutter/material.dart';
import 'package:marketplace/pages/chat_page.dart';
import 'package:marketplace/pages/tabs/fitness_tab.dart';
import 'package:marketplace/pages/tabs/health_tab.dart';
import 'package:marketplace/pages/tabs/home_tab.dart';
import 'package:marketplace/pages/tabs/orders_tab.dart';
import 'package:marketplace/theme/styles.dart';
import 'package:marketplace/utils/enum/main_tab.dart';
import 'package:marketplace/utils/extenstion/build_extension.dart';
import 'package:marketplace/utils/extenstion/navigator_extension.dart';

class MainPage extends StatefulWidget {
  const MainPage({
    super.key,
  });

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  MainTab _tab = MainTab.home;

  void _goToChat() => context.navigator.push(
    MaterialPageRoute(
      builder: (_) => const ChatPage(),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar,
      body: _body,
      bottomNavigationBar: _bottomNavigationBar,
    );
  }

  AppBar? get _appBar {
    switch (_tab) {
      case MainTab.home:
        return AppBar(
          leading: const Icon(Icons.person),
          actions: [
            IconButton(
              onPressed: _goToChat,
              icon: const Icon(Icons.message),
            )
          ],
        );
      case MainTab.health:
      case MainTab.fitness:
        return null;
      case MainTab.orders:
        return AppBar(
          centerTitle: false,
          title: Text(
            context.localization.cart,
            style: AppTextStyles.mainAppBarTextStyle,
          ),
          actions: const [
            Icon(Icons.info_outline),
          ],
        );
    }
  }

  Widget get _body {
    switch (_tab) {
      case MainTab.home:
        return const HomeTab();
      case MainTab.health:
        return const HealthTab();
      case MainTab.fitness:
        return const FitnessTab();
      case MainTab.orders:
        return const OrdersTab();
    }
  }

  Widget get _bottomNavigationBar {
    return BottomNavigationBar(
      currentIndex: _tab.index,
      onTap: (index) {
        setState(() {
          _tab = MainTab.values[index];
        });
      },
      unselectedItemColor: const Color(0xFF767676),
      selectedItemColor: const Color(0xFF0033EC),
      unselectedLabelStyle: AppTextStyles.unselectedBottomNavigationBarTextStyle,
      selectedLabelStyle: AppTextStyles.selectedBottomNavigationBarTextStyle,
      items: MainTab.values
          .map(
            (tab) => BottomNavigationBarItem(
              icon: Icon(tab.icon),
              label: tab.label(context),
            ),
          )
          .toList(),
    );
  }
}
