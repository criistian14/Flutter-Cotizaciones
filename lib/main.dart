import 'package:flutter/material.dart';



// Screens
import 'screens/login.dart';
import 'screens/signUp.dart';



class MyApp extends StatefulWidget 
{
	_MyAppState createState() => _MyAppState();
}


class _MyAppState extends State<MyApp>
{
	final routes = <String, WidgetBuilder>{
		'/login': (BuildContext context) => Login(),
		'/signUp': (BuildContext context) => SignUp()
	};

	Widget _initialRoute;


	@override
	void initState() 
	{
		super.initState();

		_initialRoute = Login();
	}



	@override
	Widget build(BuildContext context) {
		return( MaterialApp(
			debugShowCheckedModeBanner: false,
			routes: routes,
			home: _initialRoute,
			theme: ThemeData(
				primaryColor: Colors.deepPurple[800],
				accentColor: Colors.teal
			),
		));
	}
}





void main() => runApp(MyApp());