import 'package:flutter/material.dart';
import 'package:isweb_test/isweb_test.dart';

class MultiPlatformScreen extends StatefulWidget {
  const MultiPlatformScreen({Key? key}) : super(key: key);

  @override
  State<MultiPlatformScreen> createState() => _MultiPlatformScreenState();
}

class _MultiPlatformScreenState extends State<MultiPlatformScreen> {
  double _currentSliderValue = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SizedBox(width: 200, child: _slider()));
  }

  StatefulWidget _slider() => isWeb() ? _webSlider() : _defaultSlider();

  Slider _defaultSlider() {
    return Slider(
      value: _currentSliderValue,
      max: 100,
      divisions: 5,
      onChanged: (double value) {
        setState(() {
          _currentSliderValue = value;
        });
      },
    );
  }

  Slider _webSlider() {
    return Slider(
      value: _currentSliderValue,
      max: 100,
      divisions: 7,
      inactiveColor: Colors.orange,
      onChanged: (double value) {
        setState(() {
          _currentSliderValue = value;
        });
      },
    );
  }
}
