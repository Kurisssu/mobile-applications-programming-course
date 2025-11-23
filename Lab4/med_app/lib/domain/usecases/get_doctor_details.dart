import '../entities/doctor_details.dart';
import '../repositories/feed_repository.dart';

class GetDoctorDetailsUseCase {
  const GetDoctorDetailsUseCase(this._repository);

  final FeedRepository _repository;

  Future<DoctorDetails> call() {
    return _repository.getDoctorDetails();
  }
}

