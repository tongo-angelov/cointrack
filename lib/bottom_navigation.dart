import 'package:flutter/material.dart';

enum TabItem { explore, portfolio, settings }

const defaultTab = TabItem.portfolio;

Map<TabItem, IconData> tabIcon = {
  TabItem.explore: Icons.search,
  TabItem.portfolio: Icons.timelapse_rounded,
  TabItem.settings: Icons.settings,
};

Map<TabItem, String> tabLabel = {
  TabItem.explore: 'Explore',
  TabItem.portfolio: 'Portfolio',
  TabItem.settings: 'Settings',
};

class BottomNavigation extends StatelessWidget {
  BottomNavigation({required this.currentTab, required this.onSelectTab});
  final TabItem currentTab;
  final ValueChanged<TabItem> onSelectTab;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Theme.of(context).bottomAppBarColor,
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: _buildItems(context),
      onTap: (index) => onSelectTab(
        TabItem.values[index],
      ),
    );
  }

  List<BottomNavigationBarItem> _buildItems(BuildContext context) {
    List<BottomNavigationBarItem> items = [];
    TabItem.values.forEach((element) {
      IconData icon = tabIcon[element]!;
      items.add(BottomNavigationBarItem(
        icon: Icon(
          icon,
          color: _colorTabMatching(item: element, context: context),
        ),
        label: tabLabel[element],
      ));
    });
    return items;
  }

  Color? _colorTabMatching(
      {required TabItem item, required BuildContext context}) {
    return currentTab == item
        ? Theme.of(context).iconTheme.color
        : Theme.of(context).primaryIconTheme.color;
  }
}
