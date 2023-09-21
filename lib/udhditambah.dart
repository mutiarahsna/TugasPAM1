import 'package:flutter/material.dart';

void main() {
  runApp(LoginApp());
}

class LoginApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login App',
      theme: ThemeData(
        primaryColor: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(50.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 70.0),
              Text(
                'Hi, Welcome!',
                style: TextStyle(
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).primaryColor,
                ),
              ),
              SizedBox(height: 32.0),
              Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Username',
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                  SizedBox(height: 16.0),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      prefixIcon: Icon(Icons.lock),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 32.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => _LoginPageState ())
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Theme.of(context).primaryColor,
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  minimumSize: Size(
                    double.infinity,
                    0,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              TextButton(
                onPressed: () {
                },
                child: Text(
                  'Lupa Kata Sandi?',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _LoginPageState extends StatefulWidget{
  @override
  State<_LoginPageState> createState() => Page1();
}

class Page1 extends State<_LoginPageState>
{
  TextEditingController conBil1=TextEditingController();
  TextEditingController conBil2=TextEditingController();
  TextEditingController conHasil=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: Text('Kalkulator'),
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.group),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DataKelompokPage()),
                    );
                  },
                ),
              ],
            ),
            resizeToAvoidBottomInset: false,
            body: Center(
                child: Padding(
                  padding: EdgeInsets.all(40.0),
                  child: Column (
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(height: 0.0),
                      Text(
                        'Kalkulator',
                        style: TextStyle(
                          fontSize: 28.0,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                      SizedBox(height: 8.0),
                      Padding(
                        padding: EdgeInsets.all(2),
                        child: TextField(
                          controller: conBil1,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "Masukkan Bilangan 1",
                          ),
                        ),
                      ),
                      SizedBox(height: 8.0),
                      Padding(
                        padding: EdgeInsets.all(2),
                        child: TextField(
                          controller: conBil2,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "Masukkan Bilangan 2",
                          ),
                        ),
                      ),
                      SizedBox(height: 8.0),
                      Padding(
                        padding: EdgeInsets.all(2),
                        child: TextField(
                          controller: conHasil,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "Bilangan hasil",
                          ),
                        ),
                      ),

                      SizedBox(height: 8.0),
                      ElevatedButton(
                        onPressed: (){
                          setState((){
                            operasiAritmatika("+");
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Theme.of(context).primaryColor,
                          padding: EdgeInsets.symmetric(vertical: 16.0),
                          minimumSize: Size(
                            double.infinity,
                            0,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        child: Text(
                          '+',
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                      SizedBox(height: 8.0),
                      ElevatedButton(
                        onPressed: (){
                          setState((){
                            operasiAritmatika("-");
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Theme.of(context).primaryColor,
                          padding: EdgeInsets.symmetric(vertical: 16.0),
                          minimumSize: Size(
                            double.infinity,
                            0,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        child: Text(
                          '-',
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                      ),

                      SizedBox(height: 8.0),
                      ElevatedButton(
                        onPressed: (){
                          setState((){
                            operasiAritmatika("/");
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Theme.of(context).primaryColor,
                          padding: EdgeInsets.symmetric(vertical: 16.0),
                          minimumSize: Size(
                            double.infinity,
                            0,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        child: Text(
                          '÷',
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                      SizedBox(height: 8.0),
                      ElevatedButton(
                        onPressed: (){
                          setState((){
                            operasiAritmatika("*");
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Theme.of(context).primaryColor,
                          padding: EdgeInsets.symmetric(vertical: 16.0),
                          minimumSize: Size(
                            double.infinity,
                            0,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        child: Text(
                          'x',
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                      ),




                      SizedBox(height: 8.0),
                      ElevatedButton(
                        onPressed: () {Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LoginApp()),
                        );
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Theme.of(context).primaryColor,
                          padding: EdgeInsets.symmetric(vertical: 16.0),
                          minimumSize: Size(
                            double.infinity,
                            0,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        child: Text(
                          'Log Out',
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
            )
        )
    );
  }

  void operasiAritmatika(String jenisOperasi){
    double Bil1=double.parse(conBil1.text);
    double Bil2=double.parse(conBil2.text);
    double hasil=0;
    if(jenisOperasi=="+"){
      hasil = Bil1 + Bil2;
    } else if (jenisOperasi == "-"){
      hasil = Bil1 - Bil2;
    }
    else if (jenisOperasi == "/"){
      hasil = Bil1 / Bil2;
    }
    else if (jenisOperasi == "*"){
      hasil = Bil1 * Bil2;
    }

    conHasil.text = hasil.toString();
  }
}

class DataKelompokPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Kelompok'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Mutiara Hasna 124210029',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.normal
              ),
            ),
            Text(
              'Fauzizah Fitria Rizqi 124210047',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.normal
              ),
            )
          ],
        ),
      ),
    );
  }
}
