import 'package:flutter/material.dart';
import 'tabs.dart';
import '../widgets/widgets.dart';

class StreamTab extends StatelessWidget {
  const StreamTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const MiniAppBar(),
        Expanded(
          child: DefaultTabController(
            length: 2, // Number of tabs
            child: Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.white,
                toolbarHeight: 10,
                bottom: const TabBar(
                  tabs: [
                    Tab(
                      child: Text(
                        'Stream',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.cyan,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'History',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.cyan,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              body: const TabBarView(
                children: [
                  SubStreamTab(),
                  SubHistoryTab(),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
