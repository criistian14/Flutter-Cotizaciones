import 'package:flutter/material.dart';


class InputText extends StatefulWidget
{
	final String label;
	final TextInputType typeInput;
	bool isPassword;


	InputText({this.label, this.typeInput, this.isPassword})
	{
		if(this.isPassword == null) {
			this.isPassword = false;
		}
	}

	_InputTextState createState() => _InputTextState();
}


class _InputTextState extends State<InputText>
{
	bool _isFocus = false;
	double _height = 3;
	FocusNode _inputFocus = FocusNode();
	String text = '';


	void _changeText(value)
	{
		setState(() {
			text = value;  
		});
	}




	@override
	Widget build(BuildContext context)
	{
		_inputFocus.addListener(() {
			setState(() {
				if (_inputFocus.hasFocus) {
					_isFocus = true; 
					_height = 0.6;  
				} else {

					if (text.isEmpty) {
						_isFocus = false;
						_height = 3;

					}
				}
			});	
		});


		return( TextField(
			keyboardType: widget.typeInput,
			obscureText: widget.isPassword,
			focusNode: _inputFocus,
			onChanged: _changeText,
			cursorColor: Colors.white,
			style: TextStyle(color: Colors.white,  fontSize: 20),
			decoration: InputDecoration(
				labelText: widget.label,
				labelStyle: TextStyle(
								color: (_isFocus ? Colors.white : Colors.white30), 
								fontSize: 18, 
								height: _height
							),
				focusedBorder: UnderlineInputBorder(borderSide: BorderSide(
					color: Colors.white,
					width: 3.2
				)),
				enabledBorder: UnderlineInputBorder(borderSide: BorderSide(
					color: Colors.white30,
					width: 2
				))
			),
		));
	}
}