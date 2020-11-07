import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:hola_mundo/Providers/UsersPrv.dart';
import 'package:provider/provider.dart';

class Dashboard extends StatefulWidget {
  Dashboard({Key key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    final UserPrv userProvider = Provider.of<UserPrv>(context);
    var user = userProvider.user;
    return Scaffold(
      backgroundColor: Color(0xfffeefd5),
      body: Column(
        children: [
          Container(
            height: 175.0,
            child: Padding(
              padding:
                  const EdgeInsets.only(left: 20.0, right: 20.0, top: 40.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Hola ',
                        style: Theme.of(context).textTheme.headline5.copyWith(
                              color: Color(0xffFFF0D7),
                            ),
                      ),
                      Text(
                        user.name,
                        style: Theme.of(context).textTheme.headline5.copyWith(
                              color: Color(0xffFFF0D7),
                            ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 200.0),
                      ),
                      Icon(
                        Icons.account_circle,
                        color: Color(0xffFFF0D7),
                        size: 34.0,
                      ),
                    ],
                  ),
                  Text(
                    '¿Qué quieres comer hoy?',
                    style: Theme.of(context).textTheme.bodyText1.copyWith(
                          color: Color.fromARGB(170, 255, 240, 215),
                          fontSize: 16.0,
                          fontWeight: FontWeight.w400,
                        ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  TextFormField(
                    style: TextStyle(
                      color: Color(0xFFFFF0D7),
                    ),
                    decoration: buildInputDecoration(
                      'Buscar platillos o restaurantes',
                      Icon(
                        Icons.search,
                        color: Color(0xffFFF0D7),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            decoration: BoxDecoration(
                color: Color(0xffFC4F32),
                // podria ir el codigo
                borderRadius: BorderRadius.all(Radius.circular(20.0))),
          ),

          Container(
            constraints: BoxConstraints(minWidth: double.infinity),
            decoration: BoxDecoration(

                // podria ir el codigo
                borderRadius: BorderRadius.all(Radius.circular(20.0))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 5.0, horizontal: 20.0),
                  child: Text(
                    'Populares cerca de ti',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 150.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
// empiez codigo prueba
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                ),
                Container(
                  width: 200.0,
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Image.asset(
                          "assets/images/burgerqueen-rest.jpg",
                          width: 190.0,
                          height: 60.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text(
                          'Mc Burger', // 'Mc Burger',
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.1,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          'Alitas Hamburgesa Nachos',
                          style: TextStyle(
                            fontSize: 10.0,
                            fontWeight: FontWeight.w500,
                            wordSpacing: 4,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 5.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            Text(
                              '4.7',
                              style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              width: 4.0,
                            ),
                            Container(
                              width: 65.0,
                              height: 30.0,
                              decoration: BoxDecoration(
                                color: Color(0xffFFF0D3),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15.0)),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.add_location_rounded,
                                    size: 18.0,
                                  ),
                                  Text(
                                    '300m',
                                    style: TextStyle(
                                      fontSize: 10.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              width: 65.0,
                              height: 30.0,
                              decoration: BoxDecoration(
                                color: Color(0xffFFF0D3),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15.0)),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.timer,
                                    size: 18.0,
                                  ),
                                  Text(
                                    '20min',
                                    style: TextStyle(
                                      fontSize: 10.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

//termina codigo prueba TARJETA 1

                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                ),
// EMPIEZA TARJETA 2
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                ),
                Container(
                  width: 200.0,
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Image.asset(
                          "assets/images/tacostao-rest.png",
                          width: 190.0,
                          height: 60.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text(
                          'Tacos Tao', // 'Mc Burger',
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.1,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          'Tacos al pastor Gringas',
                          style: TextStyle(
                            fontSize: 10.0,
                            fontWeight: FontWeight.w500,
                            wordSpacing: 4,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 5.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            Text(
                              '4.0',
                              style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              width: 4.0,
                            ),
                            Container(
                              width: 65.0,
                              height: 30.0,
                              decoration: BoxDecoration(
                                color: Color(0xffFFF0D3),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15.0)),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.add_location_rounded,
                                    size: 18.0,
                                  ),
                                  Text(
                                    '300m',
                                    style: TextStyle(
                                      fontSize: 10.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              width: 65.0,
                              height: 30.0,
                              decoration: BoxDecoration(
                                color: Color(0xffFFF0D3),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15.0)),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.timer,
                                    size: 18.0,
                                  ),
                                  Text(
                                    '20min',
                                    style: TextStyle(
                                      fontSize: 10.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
// termina la tarjeta 2
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                ),
              ],
            ),
          ),

// terminan LAS TARJETAS
          Padding(
            padding: const EdgeInsets.only(right: 230.0),
            child: Text(
              'Explorar categorias',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0),
          ),
// empiezan las categorias
          Container(
            height: 110.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
// empiez codigo prueba
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                ),
                Container(
                  width: 100.0,
                  color: Colors.orange[900],
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Image.asset(
                          "assets/images/fast.jpg",
                          color: Colors.orange[50],
                          width: 60.0,
                          height: 60.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text(
                          '     Rapida', // 'Mc Burger',
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.orange[50],
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.1,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 5.0, vertical: 0.0),
                        child: Text(
                          '  150 Lugares',
                          style: TextStyle(
                            color: Colors.orange[50],
                            fontSize: 10.0,
                            fontWeight: FontWeight.w500,
                            wordSpacing: 4,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

//termina codigo prueba TARJETA 2

                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                ),
// empieza la segunda categoria
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                ),
                Container(
                  width: 100.0,
                  color: Colors.deepPurple[500],
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Image.asset(
                          "assets/images/ensalada.png",
                          color: Colors.orange[50],
                          width: 60.0,
                          height: 60.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text(
                          '   Ensalada', // 'Mc Burger',
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.orange[50],
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.1,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 5.0, vertical: 0.0),
                        child: Text(
                          '   20 Lugares',
                          style: TextStyle(
                            color: Colors.orange[50],
                            fontSize: 10.0,
                            fontWeight: FontWeight.w500,
                            wordSpacing: 4,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                ),
                // termina la seguda categoria
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                ),
// empieza la tercera categoria

                Container(
                  width: 100.0,
                  color: Colors.lightGreen[700],
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Image.asset(
                          "assets/images/pos.png",
                          color: Colors.orange[50],
                          width: 60.0,
                          height: 60.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text(
                          '     Postres', // 'Mc Burger',
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.orange[50],
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.1,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 5.0, vertical: 0.0),
                        child: Text(
                          '   43 Lugares',
                          style: TextStyle(
                            color: Colors.orange[50],
                            fontSize: 10.0,
                            fontWeight: FontWeight.w500,
                            wordSpacing: 4,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                // termina la tercera  categoria
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                ),
                // empieza la cuarta categoria
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                ),
                Container(
                  width: 100.0,
                  color: Colors.yellow[800],
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Image.asset(
                          "assets/images/mar.png",
                          color: Colors.orange[50],
                          width: 60.0,
                          height: 60.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text(
                          '     Mariscos', // 'Mc Burger',
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.orange[50],
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.1,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 5.0, vertical: 0.0),
                        child: Text(
                          '   71 Lugares',
                          style: TextStyle(
                            color: Colors.orange[50],
                            fontSize: 10.0,
                            fontWeight: FontWeight.w500,
                            wordSpacing: 4,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                // termina la seguda categoria
              ],
            ),
          ),
          // TERMINAN TODAS LAS CATEGORIAS
// EMPIEZA LO RECOMENDADO
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 3.0),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 270.0),
            child: Text(
              'Recomendado',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 3.0),
          ),
          Container(
            height: 150.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
// empiez codigo prueba
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                ),
                Container(
                  width: 200.0,
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Image.asset(
                          "assets/images/shusi.jpg",
                          width: 190.0,
                          height: 60.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text(
                          'Shusi Grill', // 'Mc Burger',
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.1,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          'Shusi, Pescado, Ramen, Rollos',
                          style: TextStyle(
                            fontSize: 10.0,
                            fontWeight: FontWeight.w500,
                            wordSpacing: 4,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 5.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

//termina codigo prueba TARJETA 1

                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                ),
// EMPIEZA TARJETA 2
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                ),
                Container(
                  width: 200.0,
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Image.asset(
                          "assets/images/comida.jpg",
                          width: 190.0,
                          height: 60.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text(
                          'Boxito Lindo', // 'Mc Burger',
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.1,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          'Comida tradicional yucateca',
                          style: TextStyle(
                            fontSize: 10.0,
                            fontWeight: FontWeight.w500,
                            wordSpacing: 4,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 5.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
// termina la tarjeta 2
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                ),
              ],
            ),
          ),
          // TERMINAN LAS CATEGORIAS
        ],
      ),
    );
  }

  InputDecoration buildInputDecoration(String hintText, Icon icon) =>
      InputDecoration(
        border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15.0))),
        contentPadding: EdgeInsets.symmetric(
          vertical: 15.0,
          horizontal: 10.0,
        ),
        prefixIcon: IconButton(
          icon: icon,
          onPressed: () {
            print('clic en el icon button');
          },
        ),
        hintText: hintText,
        hintStyle: TextStyle(
          fontSize: 14.0,
          color: Color(0x90FFF0D7),
        ),
        fillColor: Color(0xffFC836E),
        filled: true,
      );
}
