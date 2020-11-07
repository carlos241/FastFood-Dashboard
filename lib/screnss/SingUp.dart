import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hola_mundo/Providers/UsersPrv.dart';
import 'package:hola_mundo/models/user.dart';
import 'package:hola_mundo/screnss/dashborad.dart';
import 'package:hola_mundo/screnss/login.dart';
import 'package:hola_mundo/screnss/welcome.dart';
import 'package:hola_mundo/utils/string_adm.dart';
import 'package:provider/provider.dart';
/*
class login2 extends StatefulWidget {
  login2({Key key}) : super(key: key);

  @override
  _login2State createState() => _login2State();
}

class _login2State extends State<login2> {
  User user = User();
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  @override
  void dispose() {
    super.dispose();
  }

  Widget build(BuildContext context) {
    final UserPrv userProvider = Provider.of<UserPrv>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
        backgroundColor: Color.fromARGB(255, 252, 79, 50),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Welcome()),
            );
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Image.asset("assets/images/fondo3.png"),
            ),
            Container(
              padding: EdgeInsets.only(
                  left: 20.0, right: 20.0, bottom: 20.0, top: 0.0),
              child: Form(
                key: _formkey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Center(
                      child: Text(
                        'Ingresa tus credenciales',
                        style: TextStyle(
                          color: Color.fromARGB(255, 34, 18, 1),
                          fontSize: 25.0,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        ' registradas para acceder ',
                        style: TextStyle(
                          color: Color.fromARGB(255, 34, 18, 1),
                          fontSize: 25.0,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        '   ',
                        style: TextStyle(
                          color: Color.fromARGB(255, 34, 18, 1),
                          fontSize: 10.0,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ),
                    TextFormField(
                      validator: (value) {
                        user.email = value;
                        if (value.isEmpty) {
                          print("No se ingreso email");
                          return 'debes de ingresar tu email';
                        }
                      },
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 15.0,
                          horizontal: 10.0,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 0, 0, 0),
                            width: 1.5,
                            style: BorderStyle.solid,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(15.0),
                          ),
                        ),
                        prefixIcon: Icon(Icons.email),
                        hintText: ' ',
                        hintStyle: TextStyle(
                          fontSize: 20.0,
                          color: Colors.black38,
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: Text(
                            ' ',
                            style: TextStyle(
                              color: Color.fromARGB(255, 34, 18, 1),
                              fontSize: 20.0,
                              decoration: TextDecoration.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                    TextFormField(
                      validator: (value) {
                        user.password = value;
                        if (value.isEmpty) {
                          return 'debes de ingresar tu contrasena';
                        }
                        if (value.length < 5) {
                          return 'demaciado corta ';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 15.0,
                          horizontal: 10.0,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 0, 0, 0),
                            width: 1.5,
                            style: BorderStyle.solid,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(15.0),
                          ),
                        ),
                        prefixIcon: Icon(Icons.lock),
                        hintText: ' ',
                        hintStyle: TextStyle(
                          fontSize: 20.0,
                          color: Colors.black38,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '¿Aun no tienes una cuenta?',
                          style: TextStyle(
                            color: Color.fromARGB(255, 34, 18, 1),
                            fontSize: 14.0,
                            decoration: TextDecoration.none,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => formulario(),
                                ));
                          },
                          child: Text(
                            'Consige una',
                            style: TextStyle(
                              color: Colors.red[300],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: Text(
                            ' ',
                            style: TextStyle(
                              color: Color.fromARGB(255, 34, 18, 1),
                              fontSize: 14.0,
                              decoration: TextDecoration.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                    /*   Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: TextButton(
                        onPressed: () {
                          nombre = nombreControler.text;
                          print("El nombre es : $nombre");
                        },
                        child: Text(
                          'Continuar',
                          style: TextStyle(color: Colors.white),
                        ),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Colors.orangeAccent),
                              
                              
                        ),
                      ),
                    ),
                    */

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
                          // validacion

                          /********* */
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Dashboard()),
                          );
                          if (!_formkey.currentState.validate()) {
                            return;
                          }

                          _formkey.currentState.save();
                          var retUsr = userProvider.getUser(user.email);
                          print(retUsr.password);
                          print(user.email);
                          print(user.password);
                          // respond to button press
                        },
                        child: Text(
                          "CONTINUAR",
                          style: TextStyle(
                            fontSize: 30.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

*/

class SingUp extends StatefulWidget {
  SingUp({Key key}) : super(key: key);
  @override
  _SingUpState createState() => _SingUpState();
}

class _SingUpState extends State<SingUp> {
  String nombre = "";
  String email = "";
  String password = "";
  User user = User();
  final nombreController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    nombreController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    final UserPrv userProvider = Provider.of<UserPrv>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfff44336),
        title: Row(
          children: [Text('Sing Up')],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 40.0, 0.0, 0.0),
                  child: Image.asset(
                    "assets/images/fondo4.png",
                    colorBlendMode: BlendMode.color,
                    height: 120,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 20.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: TextFormField(
                          textCapitalization: TextCapitalization.sentences,
                          keyboardType: TextInputType.text,
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(
                                RegExp(r'[a-zA-Z]+|\s'))
                          ],
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Ingrese su nombre';
                            }
                            if (value.contains(new RegExp(r'[0-9]'))) {
                              return 'No puede ingresar numeros';
                            }
                            if (value.length < 4) {
                              return 'Nombre demasiado corto';
                            }
                            user.name = value;
                            return null;
                          },
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 15.0,
                              horizontal: 10.0,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(15.0),
                              ),
                            ),
                            prefixIcon: Icon(
                              Icons.account_circle_sharp,
                              color: Colors.black,
                              size: 30,
                            ),
                            hintText: 'Nombre',
                            hintStyle: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          inputFormatters: [
                            FilteringTextInputFormatter.deny(RegExp(r'\s'))
                          ],
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Debes de ingresar un Email';
                            }
                            if (!StringAdm.validarEmail(value)) {
                              return 'Ingresa un Email valido';
                            }
                            user.email = value;
                            return null;
                          },
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 15.0,
                              horizontal: 10.0,
                            ),
                            enabledBorder: OutlineInputBorder(
                              /*  borderSide: BorderSide(
                                color: Color.fromARGB(250, 50, 150, 253),
                                width: 1.5,
                                style: BorderStyle.solid,
                              ),*/
                              borderRadius: BorderRadius.all(
                                Radius.circular(15.0),
                              ),
                            ),
                            prefixIcon: Icon(
                              Icons.email,
                              color: Colors.black,
                              size: 30,
                            ),
                            hintText: 'Email',
                            hintStyle: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: TextFormField(
                          keyboardType: TextInputType.phone,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                            LengthLimitingTextInputFormatter(10),
                          ],
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Ingrese su número de telefono';
                            }
                            if (value.length != 10) {
                              return 'Ingresa 10 mueros exactos';
                            }
                            user.phone = value;
                            return null;
                          },
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 15.0,
                              horizontal: 10.0,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(15.0),
                              ),
                            ),
                            prefixIcon: Icon(
                              Icons.phone,
                              color: Colors.black,
                              size: 30,
                            ),
                            hintText: 'Telefono',
                            hintStyle: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: TextFormField(
                          validator: (value) {
                            if (value.length < 4) {
                              return 'Contraseña demasiado corta';
                            }
                            user.password = value;
                            return null;
                          },
                          obscureText: true,
                          obscuringCharacter: "*",
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 15.0,
                              horizontal: 10.0,
                            ),
                            enabledBorder: OutlineInputBorder(
                              /*  borderSide: BorderSide(
                                color: Color.fromARGB(250, 50, 150, 253),
                                width: 1.5,
                                style: BorderStyle.solid,
                              ),*/
                              borderRadius: BorderRadius.all(
                                Radius.circular(15.0),
                              ),
                            ),
                            prefixIcon: Icon(
                              Icons.lock,
                              color: Colors.black,
                              size: 30,
                            ),
                            hintText: 'Contraseña',
                            hintStyle: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: TextFormField(
                          validator: (value) {
                            if (!StringAdm.validarPasswords(
                                value, user.password)) {
                              return 'Las contraseñas no coinciden';
                            }
                            return null;
                          },
                          obscureText: true,
                          obscuringCharacter: "*",
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 15.0,
                              horizontal: 10.0,
                            ),
                            enabledBorder: OutlineInputBorder(
                              /*  borderSide: BorderSide(
                                color: Color.fromARGB(250, 50, 150, 253),
                                width: 1.5,
                                style: BorderStyle.solid,
                              ),*/
                              borderRadius: BorderRadius.all(
                                Radius.circular(15.0),
                              ),
                            ),
                            prefixIcon: Icon(
                              Icons.lock,
                              color: Colors.black,
                              size: 30,
                            ),
                            hintText: 'Confirmar contraseña',
                            hintStyle: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 20.0),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: SizedBox(
                            width: double.infinity,
                            height: 60,
                            child: LogginButton(
                                formKey: _formKey,
                                user: user,
                                userProvider: userProvider),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class LogginButton extends StatelessWidget {
  const LogginButton({
    Key key,
    @required GlobalKey<FormState> formKey,
    @required this.user,
    @required this.userProvider,
  })  : _formKey = formKey,
        super(key: key);
  final GlobalKey<FormState> _formKey;
  final User user;
  final UserPrv userProvider;

  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () async {
        if (!_formKey.currentState.validate()) {
          return;
        }

        print('Todo bien');
        print(user.email);
        final sb = SnackBar(
          content: Text('¡Los datos se han guardado!'),
        );

        Scaffold.of(context).showSnackBar(sb);
        userProvider.user = user;
        userProvider.users = user;
        _formKey.currentState.save();
        await Future.delayed(Duration(seconds: 3));
        Navigator.pop(context);
      },
      child: Text(
        'CREAR CUENTA',
        style: TextStyle(color: Colors.white, fontSize: 15),
      ),
      style: ButtonStyle(
        shape: MaterialStateProperty.all<OutlinedBorder>(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        ),
        backgroundColor: MaterialStateProperty.all<Color>(
          Color(0xffFC4F32),
        ),
      ),
    );
  }
}
