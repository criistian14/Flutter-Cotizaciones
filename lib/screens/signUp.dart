import 'package:flutter/material.dart';


class SignUp extends StatelessWidget
{
	@override
	Widget build(BuildContext context)
	{
		return(Scaffold(
			body: RaisedButton(
				child: Text('Sign In'),
				onPressed: () {
					Navigator.pushReplacementNamed(context, '/login');
				},
			),
		));
	}
}