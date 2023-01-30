import 'package:flutter/material.dart';


/*

1. AppBar의 elevation 및 foregroundColor에 대한 이해도가 있는가?

2. BottomNavigation을 구현할 수 있는가?

3. BottomNavigation에 따라 TabView를 구현할 수 있는가?


 */


class AppBarBottomNaviScreen extends StatefulWidget {
  const AppBarBottomNaviScreen({Key? key}) : super(key: key);

  @override
  State<AppBarBottomNaviScreen> createState() => _AppBarBottomNaviScreenState();
}

class _AppBarBottomNaviScreenState extends State<AppBarBottomNaviScreen> with SingleTickerProviderStateMixin{
  int index = 0;
  late TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 2, vsync: this);
    controller.addListener(tabListener);
  }

  @override
  void dispose() {
    controller.removeListener(tabListener);
    super.dispose();
  }
  void tabListener(){
    setState(() {
      index = controller.index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          foregroundColor: Colors.green,
          title: Text(
            'AppBar and BottomNavigator',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          )),
      body: TabBarView(
        physics: NeverScrollableScrollPhysics(),
        controller: controller,
        children: [
          Center(child: Container(child: Text('홈'))),
          Center(child: Container(child: Text('푸드'))),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (int index){
          controller.animateTo(index);
          //setState(() {
            //this.index = index;

          //});
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: '홈'),
          BottomNavigationBarItem(icon: Icon(Icons.fastfood_outlined), label: '푸드'),
        ],
      ),
    );
  }
}
