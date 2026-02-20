import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:switcher_button/switcher_button.dart';

import '../const.dart';
import '../services/api_service.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.title});

  final String title;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _switchValue = true;
  final TextEditingController _textEditingController = TextEditingController();
  bool _isInputEmpty = true;
  String _responseText = 'Hello Dear';
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _textEditingController.addListener(() {
      setState(() {
        _isInputEmpty = _textEditingController.text.isEmpty;
      });
    });
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  Future<void> _sendRequest() async {
    if (_isInputEmpty) return;

    final String inputText = _textEditingController.text.trim();

    setState(() {
      _isLoading = true;
    });

    try {
      final String result = await ApiService.generateResponse(
        inputText: inputText,
        flirtyMode: _switchValue,
      );
      setState(() {
        _responseText = result;
        _textEditingController.clear();
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _responseText = 'Error: ${e.toString()}';
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final Color appBarColor =
        _switchValue ? const Color(0xff432e81) : Colors.green;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        toolbarHeight: 110,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              widget.title,
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.w900,
                fontFamily: GoogleFonts.playfairDisplay().fontFamily,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 10.0),
                  child: Text('G MAN'),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 12.0, right: 12, top: 12),
                  child: SwitcherButton(
                    value: _switchValue,
                    onChange: (value) {
                      setState(() {
                        _switchValue = value;
                      });
                    },
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 10.0),
                  child: Text('CUPID'),
                ),
              ],
            ),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Color(0xff1c1b1f),
                ),
                child: Center(
                  child: _isLoading
                      ? const CircularProgressIndicator()
                      : SingleChildScrollView(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            _responseText,
                            style: txtstyle(),
                          ),
                        ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.cyanAccent,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0xff432e80),
                          blurRadius: 5.0,
                          offset: Offset.zero,
                        ),
                      ],
                    ),
                    child: TextField(
                      controller: _textEditingController,
                      maxLines: null,
                      keyboardType: TextInputType.multiline,
                      decoration: InputDecoration(
                        hintText: 'Type something...',
                        filled: true,
                        fillColor: Colors.grey[900],
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: BorderSide.none,
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 8.0,
                          horizontal: 20.0,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                if (!_isInputEmpty)
                  ElevatedButton(
                    onPressed: _sendRequest,
                    style: ElevatedButton.styleFrom(
                      shadowColor: const Color(0xff432e80),
                      backgroundColor: Colors.transparent,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: const Color(0xff1c1b1f),
                      ),
                      child: const Icon(
                        Icons.arrow_circle_up_rounded,
                        size: 45,
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
