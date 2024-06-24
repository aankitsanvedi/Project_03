import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(left:10.0, right: 10.0, top: 10.0),
            child: SizedBox(
              height: 150, 
              width: double.infinity,
              child: Card(
                child: Center(
                  child: ListTile(
                    leading: Image.asset('assets/images/dummy.png'),
                    title:  const Text('lorem ipusm dummy', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                    subtitle: const Padding(
                      padding: EdgeInsets.only(top:5.0),
                      child: Text('Price: 200.00'),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
