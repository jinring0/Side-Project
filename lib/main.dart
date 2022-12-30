import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      routes: {
        '/restaurant1': (context) => RestaurantPage1(),
        '/restaurant2': (context) => RestaurantPage2(),
        '/restaurant3': (context) => RestaurantPage3(),
        '/restaurant4': (context) => RestaurantPage4(),
        '/restaurant5': (context) => RestaurantPage5(),
      },
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>{


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('三餐決策器'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.fastfood),
            title: Text('速食'),
            subtitle: Text('漢堡店'),
            onTap: () {
              Navigator.pushNamed(context, '/restaurant1');
            },
          ),
          ListTile(
            leading: Icon(Icons.ramen_dining_outlined,),
            title: Text('日式料理'),
            subtitle: Text('拉麵,壽司,定食'),
            onTap: () {
              Navigator.pushNamed(context, '/restaurant2', arguments: '日式餐廳');
              // Handle the tap event here
            },
          ),
          ListTile(
            leading: Icon(Icons.soup_kitchen),
            title: Text('中式料理'),
            subtitle: Text('熱炒,火鍋,鹹酥雞'),
            onTap: () {
              Navigator.pushNamed(context, '/restaurant3', arguments: '中式餐廳');
              // Handle the tap event here
            },
          ),

          ListTile(
            leading: Icon(Icons.local_dining),
            title: Text('義式料理'),
            subtitle: Text('義大利麵,披薩店'),
            onTap: () {
              Navigator.pushNamed(context, '/restaurant4', arguments: '義式餐廳');
              // Handle the tap event here
            },
          ),

          ListTile(
            leading: Icon(Icons.restaurant_menu),
            title: Text('印度料理'),
            subtitle: Text('咖哩、薄餅、炒飯'),
            onTap: () {
              // 觸發事件的代碼
              Navigator.pushNamed(context, '/restaurant5', arguments: '印度餐廳');
            },
          )


          // Add more ListTiles here
        ],
      ),
    );
  }
}

class RestaurantPage1 extends StatefulWidget {

  @override

  RestaurantPage1State createState() => RestaurantPage1State();


}

class RestaurantPage1State extends State<RestaurantPage1> {
// 定義餐廳名稱列表
  List<String> restaurants = [    '麥當勞',    '肯德基',    '摩斯漢堡',    '漢堡王', ];

  String? selectedRestaurant;
  String? newRestaurant;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('您愛吃的速食餐廳'),
      ),
      body: Column(
          children: [

            Expanded(child:ListView.builder(
              itemCount: restaurants.length,
              itemBuilder: (context, index) => ListTile(
                leading: const Icon(Icons.fastfood),
                title: Text(restaurants[index]),
              ),
            ),
            ),

            TextField(
              decoration: InputDecoration(labelText: '餐廳名稱'),
              onSubmitted: (value) {
                setState(() {
                  restaurants.add(value);
                });
              },
            ),
            SizedBox(height: 20),
            TextButton(
              child: Text('添加餐廳'),
              onPressed: () {
                // 将新餐厅添加到餐厅列表中
                setState(() {
                  restaurants.add(newRestaurant!);
                  newRestaurant = '';
                });
              },
            ),

            Text(selectedRestaurant ?? '尚未選擇餐廳'),
            SizedBox(height: 20),
            TextButton(
              child: Text('隨機選擇餐廳'),
              onPressed: () {
                // 隨機選擇餐廳
                setState(() {
                  selectedRestaurant = restaurants[Random().nextInt(restaurants.length)];
                });
              },
            ),
          ],
        ),
      );
  }
}

class RestaurantPage2 extends StatefulWidget {

  @override

  RestaurantPage2State createState() => RestaurantPage2State();


}

class RestaurantPage2State extends State<RestaurantPage2> {
// 定義餐廳名稱列表
  List<String> restaurants = [    '雞道樂',    '一蘭拉麵',    '拉麵俠',    '拉麵媽媽', ];

  String? selectedRestaurant;
  String? newRestaurant;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('您愛吃的日式餐廳'),
      ),
      body: Column(
        children: [

          Expanded(child:ListView.builder(
            itemCount: restaurants.length,
            itemBuilder: (context, index) => ListTile(
              leading: const Icon(Icons.ramen_dining_outlined),
              title: Text(restaurants[index]),
            ),
          ),
          ),

          TextField(
            decoration: InputDecoration(labelText: '餐廳名稱'),
            onSubmitted: (value) {
              setState(() {
                restaurants.add(value);
              });
            },
          ),
          SizedBox(height: 20),
          TextButton(
            child: Text('添加餐廳'),
            onPressed: () {
              // 将新餐厅添加到餐厅列表中
              setState(() {
                restaurants.add(newRestaurant!);
                newRestaurant = '';
              });
            },
          ),

          Text(selectedRestaurant ?? '尚未選擇餐廳'),
          SizedBox(height: 20),
          TextButton(
            child: Text('隨機選擇餐廳'),
            onPressed: () {
              // 隨機選擇餐廳
              setState(() {
                selectedRestaurant = restaurants[Random().nextInt(restaurants.length)];
              });
            },
          ),
        ],
      ),
    );
  }
}

class RestaurantPage3 extends StatefulWidget {

  @override

  RestaurantPage3State createState() => RestaurantPage3State();


}

class RestaurantPage3State extends State<RestaurantPage3> {
// 定義餐廳名稱列表
  List<String> restaurants = [    '川味串香',    '珍寶燒臘',    '鍋台銘', ];

  String? selectedRestaurant;
  String? newRestaurant;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('您愛吃的中式餐廳'),
      ),
      body: Column(
        children: [

          Expanded(child:ListView.builder(
            itemCount: restaurants.length,
            itemBuilder: (context, index) => ListTile(
              leading: const Icon(Icons.soup_kitchen),
              title: Text(restaurants[index]),
            ),
          ),
          ),

          TextField(
            decoration: InputDecoration(labelText: '餐廳名稱'),
            onSubmitted: (value) {
              setState(() {
                restaurants.add(value);
              });
            },
          ),
          SizedBox(height: 20),
          TextButton(
            child: Text('添加餐廳'),
            onPressed: () {
              // 将新餐厅添加到餐厅列表中
              setState(() {
                restaurants.add(newRestaurant!);
                newRestaurant = '';
              });
            },
          ),

          Text(selectedRestaurant ?? '尚未選擇餐廳'),
          SizedBox(height: 20),
          TextButton(
            child: Text('隨機選擇餐廳'),
            onPressed: () {
              // 隨機選擇餐廳
              setState(() {
                selectedRestaurant = restaurants[Random().nextInt(restaurants.length)];
              });
            },
          ),
        ],
      ),
    );
  }
}

class RestaurantPage4 extends StatefulWidget {

  @override

  RestaurantPage4State createState() => RestaurantPage4State();


}

class RestaurantPage4State extends State<RestaurantPage4> {
// 定義餐廳名稱列表
  List<String> restaurants = [    'Buona Pasta',    'Otto Pasta',   ];

  String? selectedRestaurant;
  String? newRestaurant;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('您愛吃的義式餐廳'),
      ),
      body: Column(
        children: [

          Expanded(child:ListView.builder(
            itemCount: restaurants.length,
            itemBuilder: (context, index) => ListTile(
              leading: const Icon(Icons.local_dining),
              title: Text(restaurants[index]),
            ),
          ),
          ),

          TextField(
            decoration: InputDecoration(labelText: '餐廳名稱'),
            onSubmitted: (value) {
              setState(() {
                restaurants.add(value);
              });
            },
          ),
          SizedBox(height: 20),
          TextButton(
            child: Text('添加餐廳'),
            onPressed: () {
              // 将新餐厅添加到餐厅列表中
              setState(() {
                restaurants.add(newRestaurant!);
                newRestaurant = '';
              });
            },
          ),

          Text(selectedRestaurant ?? '尚未選擇餐廳'),
          SizedBox(height: 20),
          TextButton(
            child: Text('隨機選擇餐廳'),
            onPressed: () {
              // 隨機選擇餐廳
              setState(() {
                selectedRestaurant = restaurants[Random().nextInt(restaurants.length)];
              });
            },
          ),
        ],
      ),
    );
  }
}

class RestaurantPage5 extends StatefulWidget {

  @override

  RestaurantPage5State createState() => RestaurantPage5State();


}

class RestaurantPage5State extends State<RestaurantPage5> {
// 定義餐廳名稱列表
  List<String> restaurants = [    '穆屋咖哩',    '香料屋印度料理',    '莫夏印度餐廳',  ];

  String? selectedRestaurant;
  String? newRestaurant;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('您愛吃的印度餐廳'),
      ),
      body: Column(
        children: [

          Expanded(child:ListView.builder(
            itemCount: restaurants.length,
            itemBuilder: (context, index) => ListTile(
              leading: const Icon(Icons.local_dining),
              title: Text(restaurants[index]),
            ),
          ),
          ),

          TextField(
            decoration: InputDecoration(labelText: '餐廳名稱'),
            onSubmitted: (value) {
              setState(() {
                restaurants.add(value);
              });
            },
          ),
          SizedBox(height: 20),
          TextButton(
            child: Text('添加餐廳'),
            onPressed: () {
              // 将新餐厅添加到餐厅列表中
              setState(() {
                restaurants.add(newRestaurant!);
                newRestaurant = '';
              });
            },
          ),

          Text(selectedRestaurant ?? '尚未選擇餐廳'),
          SizedBox(height: 20),
          TextButton(
            child: Text('隨機選擇餐廳'),
            onPressed: () {
              // 隨機選擇餐廳
              setState(() {
                selectedRestaurant = restaurants[Random().nextInt(restaurants.length)];
              });
            },
          ),
        ],
      ),
    );
  }
}

