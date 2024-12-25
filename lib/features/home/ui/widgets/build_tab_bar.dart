import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BuildTabBar extends StatefulWidget {
  const BuildTabBar({
    super.key,
  });

  @override
  State<BuildTabBar> createState() => _BuildTabBarState();
}

class _BuildTabBarState extends State<BuildTabBar>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey.shade100,
          borderRadius: BorderRadius.circular(10.r)),
      child: TabBar(
          dividerColor: Colors.transparent,
          indicator: BoxDecoration(
              border: Border.all(width: 3.w, color: Colors.white),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade300, blurRadius: 1, spreadRadius: 1)
              ],
              borderRadius: BorderRadius.circular(10.r)),
          indicatorSize: TabBarIndicatorSize.tab,
          labelColor: Colors.black,
          unselectedLabelColor: Colors.grey,
          controller: _tabController,
          tabs: const [Tab(text: 'Chat'), Tab(text: 'Call')]),
    );
  }
}
