import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: latih1(),
  ));
}

class latih1 extends StatelessWidget{
    @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Latihan Flutter Pertama'),
        ),
        body: Center(
          child: Container(
            width: 300,
            height: 300,
            color: Colors.amber,
            child: Column(
              children: [
                Text(
                  'SISTEM INFORMASI',
                  style: TextStyle(fontSize: 25, color: Colors.blue),
                ),
                Text(
                  'BABY BOZZ',
                  style: TextStyle(fontSize: 30, color: Colors.green),
                ),
                Text(
                  'A12.2020.06472',
                  style: TextStyle(fontSize: 30, color: Colors.cyan),
                ),  
                Container(
                  height: 100, 
                  width: 100,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset('images/fotosaya.jpg'),
                  )),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => halaman2(),
                        )
                        );
                  },
                  child: Text(
                    'Click menuju Halaman 2',
                    style: TextStyle(fontSize: 20),                    
                  ))
              ],
            )),
        ),
      ),
    );
  }
}

class halaman2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Ini adalah halaman2'),
        ),
        body: Column(
          children: [
            Container (
              child: Text(
                'Ini adalah halaman 2',
                style: TextStyle(fontSize: 25),
              ),
            ),
            ElevatedButton(
              onPressed: (){
                Navigator.pop(context);
              },
              child: Text('Kembali ke Halaman 1'))
          ],
        )),
    );
  }
}
