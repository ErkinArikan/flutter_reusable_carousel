## 🎥 Preview

![demo](assets/demo.gif)

# 📸 Flutter Reusable Carousel Slider

A reusable, responsive, and visually aesthetic carousel slider widget built with Flutter and the `carousel_slider` & `kartal` packages.

## ✨ Features
- Dynamic image loading
- `kartal`-powered padding, sizing, and radius
- Auto-play with smooth animation
- Fully customizable & responsive

## 🚀 Installation

Add the following to your `pubspec.yaml`:

```yaml
dependencies:
  carousel_slider: ^4.0.0
  kartal: ^3.5.0
```

Then copy `carousel_image.dart` into your project and import it:

```dart
import 'lib/carousel_image.dart';
```

## 🧩 Usage

```dart
import 'package:flutter/material.dart';
import 'carousel_image.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CaroselImage(),
      ),
    );
  }
}
```

## 📌 Notes
- This carousel is stateless, lightweight, and can be dropped into any screen.
- Modify the `imageUrls` list or pass it as a parameter for more flexibility.

## 🤝 Contributions

Pull requests are welcome! For major changes, please open an issue first.

## 📜 License

MIT
