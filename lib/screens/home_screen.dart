import 'package:flutter/material.dart';
import 'package:novus_app/services/networking.dart';

// Networking represents a class doing a request to an API to get all data
Networking productsData = Networking();

// Home View
// Displays all data extracted from API
class HomeScreen extends StatefulWidget {
  static const id = "home";
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isWaiting;
  var data;

  // Methods to Initialize the component when it's called and start to do the request to API
  @override
  void initState() {
    super.initState();
    getData();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 25.0),
            child: DataTable(
              sortColumnIndex: 2,
              sortAscending: false,
              columns: [
                DataColumn(label: Text("id")),
                DataColumn(label: Text("nombre")),
                DataColumn(label: Text("direccion"), numeric: true),
              ],
              rows: isWaiting ? [] : generateData(),
            ),
          ),
        ),
      ),
    );
  }

  //Paint Data from API Dinamically, I choose some data to paint into Home View
  List<DataRow> generateData() {
    List<DataRow> rows = [];
    for (var len = 0; len < data.length; len++) {
      DataRow dataRow = DataRow(
        cells: [
          DataCell(Text(data[len]['idestablecimiento'])),
          DataCell(Text(data[len]['nombre'])),
          DataCell(Text(data[len]['direccion'])),
        ]
      );
      rows.add(dataRow);
    }
    return rows;
  }

  // Async method to get Info from API and paint dinamically in Home View
  void getData() async {
    isWaiting = true;
    try {
      var currentData = await productsData.getData();
      isWaiting = false;
      setState(() {
        data = currentData;
      });
    }
    catch (e) {
      print(e);
    }
  }
}
