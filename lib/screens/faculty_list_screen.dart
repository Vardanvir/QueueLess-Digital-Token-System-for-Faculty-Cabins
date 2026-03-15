import 'package:flutter/material.dart';
import '../services/api_service.dart';
import '../models/faculty_model.dart';
import '../services/token_service.dart';

class FacultyListScreen extends StatefulWidget {
  @override
  _FacultyListScreenState createState() => _FacultyListScreenState();
}

class _FacultyListScreenState extends State<FacultyListScreen> {
  late Future<List<Faculty>> facultyList;

  @override
  void initState() {
    super.initState();
    facultyList = ApiService.fetchFaculty();
    loadToken(); // retrieve saved token when app starts
  }

  void generateToken() async {
    int token = DateTime.now().millisecondsSinceEpoch;

    await TokenService.saveToken(token);

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("Token Generated: $token"),
      ),
    );
  }

  void loadToken() async {
    int? token = await TokenService.getToken();

    if (token != null) {
      Future.delayed(Duration.zero, () {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text("Saved Token Found: $token"),
          ),
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("QueueLess - Faculty List"),
      ),
      body: FutureBuilder<List<Faculty>>(
        future: facultyList,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                final faculty = snapshot.data![index];

                return Card(
                  child: ListTile(
                    leading: Image.network(faculty.image),
                    title: Text(faculty.name),
                    trailing: ElevatedButton(
                      onPressed: generateToken,
                      child: Text("Take Token"),
                    ),
                  ),
                );
              },
            );
          } else if (snapshot.hasError) {
            return Center(child: Text("Error loading data"));
          }

          return Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}