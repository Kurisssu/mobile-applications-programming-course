import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calories Calculator',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  final TextEditingController _foodController = TextEditingController();
  final TextEditingController _caloriesController = TextEditingController();

  // List for food
  final List<Map<String, dynamic>> _food = [];
  double _totalCalories = 0;

  // Function to read and control data (food and calories)
  void _addFood() {
    String name = _foodController.text;
    String caloriesText = _caloriesController.text;

    if (name.isNotEmpty && caloriesText.isNotEmpty) {
      double calories = double.tryParse(caloriesText) ?? 0;

      setState(() {
        _food.add({"name": name, "calories": calories});
      });

      _foodController.clear();
      _caloriesController.clear();
    }
  }

  // Function to calculate total calories
  void _calculTotal() {
    double sum = 0;
    for (var food in _food) {
      sum += food["calories"];
    }
    setState(() {
      _totalCalories = sum;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Calories Calculator")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Field for food
            TextField(
              controller: _foodController,
              decoration: InputDecoration(
                labelText: "Food",
                prefixIcon: Icon(Icons.fastfood, color: Colors.green),
                filled: true,
                fillColor: Colors.green.shade50,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            Padding(padding: const EdgeInsets.only(bottom: 12)),
            // Field for calories
            TextField(
              controller: _caloriesController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Calories",
                prefixIcon: Icon(
                  Icons.local_fire_department,
                  color: Colors.red,
                ),
                filled: true,
                fillColor: Colors.red.shade50,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),

            SizedBox(height: 10),

            // Add food button
            ElevatedButton(onPressed: _addFood, child: Text("Add")),

            SizedBox(height: 20),

            // List of introduced food
            Expanded(
              child: ListView.builder(
                itemCount: _food.length,
                itemBuilder: (context, index) {
                  return Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    elevation: 3,
                    margin: EdgeInsets.symmetric(vertical: 6),
                    child: ListTile(
                      leading: Icon(Icons.check_circle, color: Colors.green),
                      title: Text(
                        _food[index]["name"],
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text("${_food[index]["calories"]} calories"),
                    ),
                  );
                },
              ),
            ),

            // Button for calories count
            ElevatedButton(
              onPressed: _calculTotal,
              child: Text("Count calories"),
            ),

            SizedBox(height: 10),

            //
            Text(
              "Total calories: $_totalCalories",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
