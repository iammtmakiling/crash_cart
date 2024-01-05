import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class SubHistoryTab extends StatefulWidget {
  const SubHistoryTab({Key? key}) : super(key: key);

  @override
  _SubStreamTabState createState() => _SubStreamTabState();
}

class _SubStreamTabState extends State<SubHistoryTab> {
  final TextEditingController searchController = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  List<Map<String, String>> patients = [];
  int currentPage = 1;
  int itemsPerPage = 5;

  @override
  void initState() {
    super.initState();
    _loadData();
    _scrollController.addListener(_scrollListener);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_scrollListener);
    super.dispose();
  }

  void _scrollListener() {
    if (_scrollController.position.pixels ==
        _scrollController.position.maxScrollExtent) {
      // Reached the end of the list, load more data
      _loadData();
    }
  }

  void _loadData() {
    // Simulating fetching data from an API
    // In a real app, you would replace this with your data fetching logic
    Future.delayed(Duration(seconds: 2), () {
      setState(() {
        patients.addAll(List.generate(
          itemsPerPage,
          (index) => {
            'name': 'New Patient ${patients.length + index + 1}',
            'patientId': 'NewId ${patients.length + index + 1}',
            'admissionDate': '11/02/03',
            'status': 'Discharged',
            'lastUpdate': '11/25/23',
          },
        ));
        currentPage++;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: [
        Row(
          children: [
            Expanded(
              child: Center(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 20),
                      SearchTextField(
                        controller: searchController,
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        '3 Searches',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(height: 20),
                    ]),
              ),
            ),
          ],
        ),
        Expanded(
          child: ListView.builder(
            controller: _scrollController,
            itemCount: patients.length + 1, // Add one for the loading indicator
            itemBuilder: (context, index) {
              if (index < patients.length) {
                return PatientBox(
                  name: patients[index]['name']!,
                  patientId: patients[index]['patientId']!,
                  admissionDate: patients[index]['admissionDate']!,
                  status: patients[index]['status']!,
                  lastUpdate: patients[index]['lastUpdate']!,
                );
              } else {
                // Loading indicator at the end of the list
                return const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                );
              }
            },
          ),
        ),
      ]),
    );
  }
}
