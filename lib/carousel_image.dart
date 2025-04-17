import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CaroselWithIndicator extends StatefulWidget {
  const CaroselWithIndicator({super.key});

  @override
  State<CaroselWithIndicator> createState() => _CaroselWithIndicatorState();
}

class _CaroselWithIndicatorState extends State<CaroselWithIndicator> {
  final List<String> imageUrls = [
    'https://picsum.photos/id/237/800/400',
    'https://picsum.photos/id/238/800/400',
    'https://picsum.photos/id/239/800/400',
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          items:
              imageUrls.map((url) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.network(
                    url,
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                );
              }).toList(),
          options: CarouselOptions(
            height:
                context.sized.highValue * 4.5, // yaklaşık %25 ekran yüksekliği
            enlargeCenterPage: true, // Ortadaki kartı büyüt
            viewportFraction: 0.8, // Her resim ekranın %70'ini kaplasın
            autoPlay: true,
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            onPageChanged: (index, reason) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
        ),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:
              imageUrls.asMap().entries.map((entry) {
                final isActive = _currentIndex == entry.key;
                return AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  width: isActive ? 16 : 8,
                  height: 8,
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  decoration: BoxDecoration(
                    color: isActive ? Colors.deepPurple : Colors.grey[300],
                    borderRadius: BorderRadius.circular(20),
                  ),
                );
              }).toList(),
        ),
      ],
    );
  }
}
