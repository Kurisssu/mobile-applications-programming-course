import '../entities/feed.dart';
import '../repositories/feed_repository.dart';

class GetFeedUseCase {
  const GetFeedUseCase(this._repository);

  final FeedRepository _repository;

  Future<Feed> call() {
    return _repository.getFeed();
  }
}

