import 'package:flutter/material.dart';

class CompartmentsInfo extends StatelessWidget {
  const CompartmentsInfo({super.key});

  @override
  Widget build(BuildContext context) {
    const double cardWidth = 181.5;
    const double cardHeight = 150;
    const double miniCardWidth = 120;
    const double miniCardHeight = 140;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: SizedBox(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                CompartmentCard(
                    title: 'Book Appointment',
                    imagePath: 'assets/images/compartments/book_appointment.png',
                    width: cardWidth,
                    height: cardHeight,
                ),
                CompartmentCard(
                  title: 'Instant Video Consult',
                  imagePath: 'assets/images/compartments/instant_video_consult.png',
                  width: cardWidth,
                  height: cardHeight,
                ),
              ],
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                CompartmentCard(
                  title: 'Medicines',
                  imagePath: 'assets/images/compartments/medicines.png',
                  width: miniCardWidth,
                  height: miniCardHeight,
                ),
                CompartmentCard(
                  title: 'Lab Tests',
                  imagePath: 'assets/images/compartments/lab_tests.png',
                  width: miniCardWidth,
                  height: miniCardHeight,
                ),
                CompartmentCard(
                  title: 'Emergency',
                  imagePath: 'assets/images/compartments/emergency.png',
                  width: miniCardWidth,
                  height: miniCardHeight,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CompartmentCard extends StatelessWidget {
  final String title;
  final String imagePath;
  final double width;
  final double height;

  const CompartmentCard({
    super.key,
    required this.title,
    required this.imagePath,
  required this.width,
  required this.height,
  });


  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
        border: Border.all(
          color: Colors.grey.shade300,
          width: 1,
        ),
      ),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.vertical(
              bottom: Radius.circular(8.5),
            ),
          ),
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.w600,
              color: Colors.black87,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}