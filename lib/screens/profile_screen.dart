import 'package:flutter/material.dart';
import 'package:flutter_application_10/providers/counter_provider.dart';
import 'package:provider/provider.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<CounterProvider>(
              builder: (context, p, _){
                return Text(
                  p.counter.toString(),
                  style: TextStyle(
                    fontSize: 28,
                  ),
                );
              },
            ),
            TextButton(
              onPressed: (){
                Provider.of<CounterProvider>(context, listen: false).minusTwo();
              }, 
              child: Text("-2"),
            )
          ],
        ),
      ),
    );
  }
}