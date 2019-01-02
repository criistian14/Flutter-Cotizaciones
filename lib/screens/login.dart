import 'package:flutter/material.dart';
import '../widgets/InputText.dart';


class Login extends StatelessWidget
{
	@override
	Widget build(BuildContext context)
	{
		return Scaffold(
			body: Container(
				decoration: BoxDecoration(
					gradient: LinearGradient(
						begin: Alignment.topCenter,
						end: Alignment.bottomCenter,
						stops: [ 0,  1],
						colors: [
							Theme.of(context).accentColor,
							Theme.of(context).primaryColor
						]
					)
				),
				child: Center(
					child: SingleChildScrollView(
						padding: EdgeInsets.symmetric(horizontal: 40),
						child: Column(
							children: <Widget>[
								Text('COTIZACIONES', style: TextStyle(
									color: Colors.white,
									letterSpacing: 3,
									fontSize: 40,
									fontWeight: FontWeight.w500
								)),
								SizedBox(height: 48),
								InputText(label: 'Email', typeInput: TextInputType.emailAddress),
								SizedBox(height: 18),
								InputText(label: 'Password', isPassword: true),
								SizedBox(height: 50),
								RaisedButton(
									shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
									padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
									elevation: 6,
									textColor: Theme.of(context).primaryColor,
									color: Colors.white,
									onPressed: () {},
									child: Text('LOGIN', style: TextStyle(
										fontSize: 25
									)),
								),
								SizedBox(height: 38),
								Row(
									mainAxisAlignment: MainAxisAlignment.center,
									children: <Widget>[
										Text('Don´t have an account?', style: TextStyle(
											color: Colors.white,
											fontSize: 17
										)),
										FlatButton(
											padding: EdgeInsets.all(0),
											onPressed: () {
												Navigator.pushNamed(context, '/signUp');
											},
											child: Text('Sign Up!',style: TextStyle(
												color: Colors.white,
												fontSize: 17,
												fontWeight: FontWeight.bold
											))
										)
										
									],
								)
							],
						),
					),
				)
			)
		);
	}

}
