
import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final String companyLogo;
  final String companyName;
  final String companyFullName;
  final String price;
  final String change;
  final Color graphColor;

  const CustomListTile({
    super.key,
    required this.companyLogo,
    required this.companyName,
    required this.companyFullName,
    required this.price,
    required this.change,
    required this.graphColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor:const Color(0xFFFAFAFA),
            child: Image.asset(
              companyLogo,
              width: 40,
              height: 40,
            ),
          ),
          const SizedBox(
            width: 16,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                companyName,
                style: const TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 4.0,
              ),
              Text(
                companyFullName,
                style: const TextStyle(
                    fontSize: 12,
                    color: Color(0XFFA0AEC0),
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),

          /// here perform Line Chart it gives error dependency
          // SizedBox(
          //   width: 100,
          //   height: 50,
          //   child: LineChart(
          //     LineChartData(
          //       // customize line chart data here
          //       minX: 0,
          //       maxX: 10,
          //       minY: 0,
          //       maxY: 10,
          //       lineTouchData: const LineTouchData(enabled: false),
          //       gridData: const FlGridData(show: false),
          //       titlesData: const FlTitlesData(
          //         show: false,
          //       ),
          //       borderData: FlBorderData(
          //         show: false,
          //       ),
          //       lineBarsData: [
          //         LineChartBarData(
          //           spots: [
          //             const FlSpot(0, 3),
          //             const FlSpot(2, 1),
          //             const FlSpot(4, 5),
          //             const FlSpot(6, 2),
          //             const FlSpot(8, 4),
          //             const FlSpot(10, 6),
          //           ],
          //           isCurved: true,
          //           barWidth: 2,
          //           color: graphColor,
          //         )
          //       ]
          //     )
          //   ),
          // ),
          const Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                price,
                style: const TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 4.0,
              ),
              Text(
                change,
                style: TextStyle(
                    fontSize: 12,
                    color: graphColor,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
