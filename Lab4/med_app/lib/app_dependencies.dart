import 'package:get/get.dart';

import 'data/datasources/api_service.dart';
import 'data/datasources/feed_remote_data_source.dart';
import 'data/repositories/feed_repository_impl.dart';
import 'domain/repositories/feed_repository.dart';
import 'domain/usecases/get_doctor_details.dart';
import 'domain/usecases/get_feed.dart';

class AppDependencies {
  static void init() {
    Get.put<ApiService>(ApiService(), permanent: true);
    Get.put<FeedRemoteDataSource>(
      FeedRemoteDataSourceImpl(Get.find<ApiService>()),
      permanent: true,
    );
    Get.put<FeedRepository>(
      FeedRepositoryImpl(remoteDataSource: Get.find<FeedRemoteDataSource>()),
      permanent: true,
    );
    Get.put<GetFeedUseCase>(
      GetFeedUseCase(Get.find<FeedRepository>()),
      permanent: true,
    );
    Get.put<GetDoctorDetailsUseCase>(
      GetDoctorDetailsUseCase(Get.find<FeedRepository>()),
      permanent: true,
    );
  }
}
