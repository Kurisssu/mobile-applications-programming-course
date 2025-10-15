class CompartmentItem {
  final String title;
  final String imagePath;
  final double width;
  final double height;

  const CompartmentItem({
    required this.title,
    required this.imagePath,
    required this.width,
    required this.height,
  });
}

const double cardWidth = 181.5;
const double cardHeight = 150.0;
const double miniCardWidth = 120.0;
const double miniCardHeight = 140.0;

const List<CompartmentItem> topRowItems = [
  CompartmentItem(
    title: 'Book Appointment',
    imagePath: 'assets/images/compartments/book_appointment.png',
    width: cardWidth,
    height: cardHeight,
  ),
  CompartmentItem(
    title: 'Instant Video Consult',
    imagePath: 'assets/images/compartments/instant_video_consult.png',
    width: cardWidth,
    height: cardHeight,
  ),
];

const List<CompartmentItem> bottomRowItems = [
  CompartmentItem(
    title: 'Medicines',
    imagePath: 'assets/images/compartments/medicines.png',
    width: miniCardWidth,
    height: miniCardHeight,
  ),
  CompartmentItem(
    title: 'Lab Tests',
    imagePath: 'assets/images/compartments/lab_tests.png',
    width: miniCardWidth,
    height: miniCardHeight,
  ),
  CompartmentItem(
    title: 'Emergency',
    imagePath: 'assets/images/compartments/emergency.png',
    width: miniCardWidth,
    height: miniCardHeight,
  ),
];