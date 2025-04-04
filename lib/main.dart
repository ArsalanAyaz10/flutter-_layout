import 'package:flutter/material.dart';
import 'package:flutter_layout/Widgets/ButtonColumn.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Layout Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Layout Demo'),
          centerTitle: true,
        ),
        body: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth < 600) {
              return MobileLayout();
            } else {
              return const Center(child: Text('This is a large screen'));
            }
          },
        ),
      ),
    );
  }
}

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          children: [
            Image.asset(
              'images/lake.jpg',
              fit: BoxFit.cover,
              width: double.infinity,
              height: 280,
            ),
            const SizedBox(height: 20),
            //Location Name and Rating Icon Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Oestereich Lake Campground',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      'Kandersteg, Switzerland',
                      style: TextStyle(fontSize: 13, color: Colors.grey),
                    ),
                  ],
                ),
                const SizedBox(width: 10),
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.redAccent),
                    SizedBox(width: 4),
                    const Text(
                      '41',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            //Call, Route and Share Icon Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildButtonColumn(Colors.purple, Icons.call, 'CALL'),
                buildButtonColumn(Colors.purple, Icons.near_me, 'ROUTE'),
                buildButtonColumn(Colors.purple, Icons.share, 'SHARE'),
              ],
            ),
            //Location Description
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.only(top: 5, left: 25, right: 25),
              child: const Text(
                'Lake Oestereich lies at the foot of the Bluemlisalp in the Bernese Alps. Situated 1578 meters above sea level, it is one of the larger Apline Lakes. A gondola ride from Kandersteg followed by a half-hour walk through pastures and pine forest, leads you to the lake which warms to 20 degrees Celsius in the summer.Activites enjoyed here include rowing, and riding the summer toboggan run.',
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 16),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
