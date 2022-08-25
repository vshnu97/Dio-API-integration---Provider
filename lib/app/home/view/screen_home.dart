import 'package:fake_api/app/home/viewmodel/infrast.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Consumer<HomeProv>(
        
        builder: (context, value, child) => ListView.separated(
            itemBuilder: (context, index) {
            
              return ListTile(
               leading: Text(value.finalList[index].id.toString()),
                title: Text(value.finalList[index].title),
                trailing: Text(value.finalList[index].userId.toString()),
                subtitle: Text(value.finalList[index].body),
              );
            },
            separatorBuilder: (context, index) {
              return const SizedBox(
                height: 10,
              );
            },
            itemCount: value.finalList.length),
      ),
    );
  }
}
