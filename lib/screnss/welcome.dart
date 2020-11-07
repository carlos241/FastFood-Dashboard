import 'package:flutter/material.dart';
import 'package:hola_mundo/screnss/SingUp.dart';
/*
class Welcome extends StatelessWidget {
  @override
// CARLOS DANIEL MARCHAN
  Widget build(BuildContext context) {
    return Container(
        color: Color.fromARGB(255, 255, 249, 239),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(
              image: AssetImage('assets/images/balloon-shape.png'),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                child: Image(
                  image: AssetImage('assets/images/FastFood-Logo.png'),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 30.0),
                child: Image(
                  image: AssetImage('assets/images/online_groceries.png'),
                ),
              ),
            ),
            Center(
              child: Text(
                'El directorio de comida ',
                style: TextStyle(
                  color: Color.fromARGB(255, 34, 18, 1),
                  fontSize: 30.0,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
            Center(
              child: Text(
                'Muestra del menu ',
                style: TextStyle(
                  color: Color.fromARGB(255, 34, 18, 1),
                  fontSize: 20.0,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
            Center(
              child: Text(
                'ademas de los precios ',
                style: TextStyle(
                  color: Color.fromARGB(255, 34, 18, 1),
                  fontSize: 20.0,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
            Center(
              child: Text(
                '   ',
                style: TextStyle(
                  color: Color.fromARGB(255, 34, 18, 1),
                  fontSize: 70.0,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
            Center(
              child: FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.black)),
                minWidth: 300,
                height: 60,
                color: Color.fromARGB(255, 252, 79, 50),
                textColor: Color.fromARGB(255, 255, 255, 255),
                onPressed: () {
                  // respond to button press
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => login2()),
                  );
                },
                child: Text(
                  "INICIAR AHORA",
                  style: TextStyle(
                    fontSize: 30.0,
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
*/
import 'package:flutter/material.dart';
import 'package:hola_mundo/screnss/login.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 255, 249, 239),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        //mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image(
            image: AssetImage('assets/images/balloon-shape.png'),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
              child: Image(
                image: AssetImage('assets/images/FastFood-Logo.png'),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 30.0),
              child: Image(
                image: AssetImage('assets/images/online_groceries.png'),
              ),
            ),
          ),
          Center(
            child: Text(
              'El directorio de comida',
              style: TextStyle(
                //color: Color.fromRGBO(71, 34, 18, 1),
                color: Theme.of(context).textTheme.bodyText1.color,
                fontSize: 24.0,
                decoration: TextDecoration.none,
              ),
            ),
          ),
          Center(
            child: Container(
              width: 250,
              padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 50.0),
              child: Text(
                'Busca. Encuentra. Pide. Recibe. Disfruta',
                textAlign: TextAlign.center,
                softWrap: true,
                overflow: TextOverflow.clip,
                style: TextStyle(
                  color: Color.fromRGBO(71, 34, 18, 1),
                  fontWeight: FontWeight.w400,
                  fontSize: 16.0,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
          ),
          Center(
            child: FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: BorderSide(color: Colors.black)),
              minWidth: 300,
              height: 60,
              textColor: Color.fromRGBO(255, 240, 211, 1),
              color: Color.fromRGBO(252, 79, 50, 1),
              onPressed: () {
                gotoLogin(context);
              },
              child: Text(
                "INICIA AHORA",
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void gotoLogin(context) {
  Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (_) => Login(),
      ));
}
