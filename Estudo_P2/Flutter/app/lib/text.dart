import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Home()));
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('my first app'),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'hello ninjas',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 20),
            Image(
              image: NetworkImage(
                  'https://media.licdn.com/dms/image/D4D35AQEe21mIhfAiQg/profile-framedphoto-shrink_400_400/0/1659984118041?e=1701619200&v=beta&t=uzVCScJTs1Za1f3FegVP_y4b0CrKgULJz4NwmD9Xanw'),
            ),
            SizedBox(height: 20),
            Image.asset('assets/eduardo.png'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('Clicou!!!');
        },
        backgroundColor: Colors.red[600],
        child: const Text('click'),
      ),
    );
  }
}
