import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      home: PedroCard(),
    ));

class PedroCard extends StatefulWidget {
  const PedroCard({super.key});

  @override
  State<PedroCard> createState() => _PedroCardState();
}

class _PedroCardState extends State<PedroCard> {
  double pedrosBac = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      appBar: AppBar(
        title: const Text("Racoon ID Card"),
        backgroundColor: Colors.blue[400],
        centerTitle: true,
        elevation: 0.0,
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              setState(() {
                pedrosBac -= 0.27;
                if (pedrosBac < 0) pedrosBac = 0;
              });
            },
            backgroundColor: Colors.blue[600],
            child: const Icon(Icons.remove),
          ),
          const SizedBox(width: 10),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                pedrosBac += 0.27;
              });
            },
            backgroundColor: Colors.blue[600],
            child: const Icon(Icons.add),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/racoon-pedro.gif'),
                radius: 40,
              ),
            ),
            const Divider(
              height: 40,
              color: Colors.white,
            ),
            const Text(
              'NAME',
              style: TextStyle(
                color: Colors.black,
                letterSpacing: 2,
              ),
            ),
            const SizedBox(height: 2),
            const Text(
              'Pedro Pedro',
              style: TextStyle(
                color: Colors.black87,
                letterSpacing: 2,
                fontSize: 19.5,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Blood Alcohol Content (BAC)',
              style: TextStyle(
                color: Colors.black,
                letterSpacing: 2,
                fontSize: 15,
              ),
            ),
            const SizedBox(height: 2),
            Text(
              '$pedrosBac',
              style: const TextStyle(
                color: Colors.black87,
                letterSpacing: 2,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'CONTACT INFO',
              style: TextStyle(
                color: Colors.black,
                letterSpacing: 2,
              ),
            ),
            const Row(
              children: [
                Text(
                  "pedropedro@nightlife.com",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                  ),
                ),
                SizedBox(width: 5),
                Icon(
                  Icons.email,
                  color: Colors.black,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
