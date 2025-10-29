import 'package:flutter/material.dart';

class ClinicInfoRow extends StatelessWidget {
  final String clinicName;
  final String location;
  final String moreClinicsText;
  final VoidCallback? onMoreClinicsTap;

  const ClinicInfoRow({
    super.key,
    required this.clinicName,
    required this.location,
    required this.moreClinicsText,
    this.onMoreClinicsTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12, left: 16, right: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                clinicName,
                style: const TextStyle(
                  color: Colors.black87,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                location,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: Colors.teal[600],
                  fontWeight: FontWeight.w400,
                  fontSize: 13,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 28),
            child: InkWell(
              onTap: onMoreClinicsTap,
              child: Text(
                moreClinicsText,
                style: TextStyle(
                  color: Colors.blue[400],
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.blue,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}