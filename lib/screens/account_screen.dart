import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Uber'),
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {},
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.notifications),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.payment),
              onPressed: () {},
            ),
          ],
        ),
        body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Row(
                        children: [
                          CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/user_avatar.png'),
                          ),
                          SizedBox(width: 10.0),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Siddique Tholan',
                                style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '5.0',
                                style: TextStyle(
                                    fontSize: 12.0, color: Colors.yellow),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 20.0),
                      Container(
                        height: 150.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(color: Colors.grey),
                        ),
                        child: const Stack(
                          children: [
                            // Placeholder for map preview
                            Center(child: Text('Map Preview')),
                            Positioned(
                              bottom: 10.0,
                              left: 10.0,
                              child: Text(
                                '16% off Uber Auto',
                                style: TextStyle(
                                    fontSize: 12.0, color: Colors.green),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Icon(Icons.security, color: Colors.blue),
                              Text(
                                'Safety checkup',
                                style: TextStyle(
                                    fontSize: 12.0, color: Colors.blue),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Icon(Icons.lock, color: Colors.green),
                              Text(
                                'Privacy checkup',
                                style: TextStyle(
                                    fontSize: 12.0, color: Colors.green),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 20.0),
                      const Row(
                        children: [
                          Icon(Icons.home),
                          SizedBox(width: 10.0),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                labelText: 'Enter pickup point',
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10.0),
                      Row(children: [
                        const Icon(Icons.location_on),
                        const SizedBox(width: 10.0),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              labelText: 'Where to?',
                              border: const OutlineInputBorder(),
                              suffixIcon: IconButton(
                                icon: const Icon(Icons.add),
                                onPressed: () {},
                              ),
                            ),
                          ),
                        ),
                      ])
                    ]))));
  }
}
