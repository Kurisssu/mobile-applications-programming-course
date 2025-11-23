import 'package:med_app/domain/entities/doctor_details.dart';
import 'package:med_app/domain/entities/feed.dart';
import 'package:med_app/domain/repositories/feed_repository.dart';

import '../datasources/feed_remote_data_source.dart';

class FeedRepositoryImpl implements FeedRepository {
  FeedRepositoryImpl({required FeedRemoteDataSource remoteDataSource})
      : _remoteDataSource = remoteDataSource;

  final FeedRemoteDataSource _remoteDataSource;

  @override
  Future<Feed> getFeed() {
    return _remoteDataSource.getFeed();
  }

  @override
  Future<DoctorDetails> getDoctorDetails() {
    return _remoteDataSource.getDoctorDetails();
  }
}

