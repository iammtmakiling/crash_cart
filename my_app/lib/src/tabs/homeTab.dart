import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Positioned(
              top: 0, left: 0, right: 0, child: CustomizedAppBar()),
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.68,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60.0),
                    topRight: Radius.circular(60.0),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white,
                      blurRadius: 10,
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: Container(
                  padding: const EdgeInsets.fromLTRB(16, 48, 16, 16),
                  child: Center(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Hospital Status:",
                          style:
                              TextStyle(fontSize: 24, color: Colors.black87)),
                      const SizedBox(
                        height: 20,
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(
                              child:
                                  coloredBox('8', 'Needs Surgery', Colors.red),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              child:
                                  coloredBox('5', 'In Surgery', Colors.orange),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(
                              child: coloredBox(
                                  '16', 'Admitted', Colors.lightGreen),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              child: coloredBox(
                                  '2', 'For Discharge', Colors.purple),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )),
                ),
              ))
        ],
      ),
      floatingActionButton: ElevatedButton(
        onPressed: () {
          // Add your button functionality here
        },
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          padding: const EdgeInsets.all(28.0), // Adjust the padding as needed
          backgroundColor: Colors.cyan,
        ),
        child: const Icon(
          Icons.add,
          color: Colors.white,
          size: 36,
        ),
      ),
    );
  }
}
