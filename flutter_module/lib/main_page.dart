/*
 * @Author: your name
 * @Date: 2023-05-24 16:33:14
 * @Description: 
 * 
 * 
 */


import 'package:flutter/material.dart';
import 'package:flutter_module/main_provider.dart';
import 'package:provider/provider.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final MainProvider provider = MainProvider();
  int count = 100;
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<MainProvider>(
      create: (context) => provider,
      child: Consumer<MainProvider>(builder: (context, value, child) {
        return Center(
          child: Column(
            children: [
              Container(
                height: 50,
                width: 100,
                color: Colors.amber,
                child: Text('${value.count}',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20),),
              ),
              SizedBox(height: 30,),
              Container(
                color: Colors.redAccent,
                child: GestureDetector(
                  onTap: () {
                    value.count = count++;
                  },
                  child: const SizedBox.square(
                    child: Text('click',
                    style: TextStyle(fontSize: 20),),
                  ),
                ),
              )
            ],
          ),
        );
      },),
    );
  }
}