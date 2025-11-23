import 'package:med_app/domain/entities/doctor_details.dart';
import 'package:med_app/presentation/list_items/list_items.dart';

class ExpertLocationData {
  final String area;
  final String hospital;
  final String fullAddress;
  const ExpertLocationData({required this.area, required this.hospital, required this.fullAddress});
}

class ExpertLocationListItem extends ListItem {
  final List<ExpertLocationData> locations;
  ExpertLocationListItem({required this.locations});

  factory ExpertLocationListItem.fromLocations(List<DoctorLocation> locations) {
    return ExpertLocationListItem(
      locations: locations
          .map(
            (location) => ExpertLocationData(
              area: location.area,
              hospital: location.hospital,
              fullAddress: location.fullAddress,
            ),
          )
          .toList(),
    );
  }
}






