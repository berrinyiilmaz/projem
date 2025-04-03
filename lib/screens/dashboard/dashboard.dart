import 'package:flutter/material.dart';
import '../../core/localizations.dart';
import '../../widgets/drawer.dart';
import '../loadplan/loadplan_list.dart';
import '../loadplan/loadplan_register.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _selectedIndex = 0;
  bool isDrawerExpanded = false;

  final List<Widget> _pages = [
    const LoadPlanList(),
    const LoadPlanRegister(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context);
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        title: Text(localizations.getTranslate('dashboard')),
        backgroundColor: Theme.of(context).colorScheme.surface,
        elevation: 0,
        leading: IconButton(
          icon: Icon(isDrawerExpanded ? Icons.close : Icons.menu),
          onPressed: () {
            setState(() {
              isDrawerExpanded = !isDrawerExpanded;
            });
          },
        ),
      ),
      body: Row(
        children: [
          AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            width: isDrawerExpanded ? 250 : 100,
            child: DrawerWidget(
              isExpanded: isDrawerExpanded,
              onItemTapped: _onItemTapped,
            ),
          ),
          Expanded(
            child: _pages[_selectedIndex],
          ),
        ],
      ),
    );
  }
}
