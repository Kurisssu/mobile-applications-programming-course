import '../entities/doctor_details.dart';
import '../entities/feed.dart';

abstract class FeedRepository {
  Future<Feed> getFeed();
  Future<DoctorDetails> getDoctorDetails();
}

