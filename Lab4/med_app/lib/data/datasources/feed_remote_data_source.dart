import '../models/doctor_details_model.dart';
import '../models/feed_model.dart';
import 'api_service.dart';

abstract class FeedRemoteDataSource {
  Future<FeedModel> getFeed();
  Future<DoctorDetailsModel> getDoctorDetails();
}

class FeedRemoteDataSourceImpl implements FeedRemoteDataSource {
  FeedRemoteDataSourceImpl(this._apiService);

  final ApiService _apiService;

  @override
  Future<FeedModel> getFeed() async {
    final data = await _apiService.fetchFeed();
    return FeedModel.fromJson(data);
  }

  @override
  Future<DoctorDetailsModel> getDoctorDetails() async {
    final data = await _apiService.fetchFeedDetails();
    return DoctorDetailsModel.fromJson(data);
  }
}

