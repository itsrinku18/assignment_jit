import 'package:flutter/material.dart';

import 'custom_list_tile.dart';

class PositionScreen extends StatelessWidget {
  const PositionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            color: const Color(0xFF33D49D),
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: const Color(0xFFEAEAEA), width: 2.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                // first row
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Portfolio value',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFFE2E8F0),
                          ),
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text(
                          '₹13,240.11',
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'Portfolio P&L',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFFE2E8F0),
                          ),
                        ),
                        SizedBox(
                          height: 2.0,
                        ),
                        Text(
                          '₹8,240.11',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              '+1.74',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                            SizedBox(width: 8.0),
                            Icon(
                              Icons.arrow_circle_up,
                              color: Colors.white,
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 24.0,
                ),
                Container(
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white.withOpacity(0.2)),
                    borderRadius: BorderRadius.circular(16.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white.withOpacity(0.2), // Shadow color
                        blurRadius: 8, // How blurry the shadow is
                        // Position of shadow
                      ),
                    ],
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 5,
                            backgroundColor: Color(0XFF52FFC4),
                          ),
                          SizedBox(
                            width: 6.0,
                          ),
                          Text(
                            'margin:',
                            style: TextStyle(
                              color: Color(0xFFE2E8F0),
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            width: 4.0,
                          ),
                          Text(
                            '₹234.11',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 5,
                            backgroundColor: Color(0XFFFF6B6B),
                          ),
                          SizedBox(
                            width: 6.0,
                          ),
                          Text(
                            'Invested Margin:',
                            style: TextStyle(
                              color: Color(0xFFE2E8F0),
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            width: 4.0,
                          ),
                          Text(
                            '₹34.11',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 12.0,),
        Expanded(
          child: ListView(
            children: const [
              CustomListTile(
                companyLogo: 'assets/icons/facebook_logo.png',
                companyName: 'FB',
                companyFullName: 'Facebook,Inc',
                price: '343.01',
                change: '+1.07%',
                graphColor: Colors.green,
              ),
              SizedBox(
                height: 16.0,
              ),
              CustomListTile(
                companyLogo: 'assets/icons/netflix_logo.png',
                companyName: 'NFLX',
                companyFullName: 'Netflix,Inc',
                price: '89.91',
                change: '+1.29%',
                graphColor: Colors.green,
              ),
              SizedBox(
                height: 16.0,
              ),
              CustomListTile(
                companyLogo: 'assets/icons/apple_logo.png',
                companyName: 'AAPl',
                companyFullName: 'Apple,Inc',
                price: '142.01',
                change: '+0.81%',
                graphColor: Colors.green,
              ),
              SizedBox(
                height: 16.0,
              ),
              CustomListTile(
                companyLogo: 'assets/icons/ford_logo.png',
                companyName: 'F',
                companyFullName: 'Ford Motor',
                price: '14.06',
                change: '-0.32%',
                graphColor: Colors.red,
              ),
              SizedBox(
                height: 16.0,
              ),
              CustomListTile(
                companyLogo: 'assets/icons/microsoft_logo.png',
                companyName: 'MSFT',
                companyFullName: 'Microsoft,Inc',
                price: '188.09',
                change: '+2.29%',
                graphColor: Colors.green,
              ),
              SizedBox(
                height: 16.0,
              ),
              CustomListTile(
                companyLogo: 'assets/icons/amazon_logo.png',
                companyName: 'AMZN',
                companyFullName: 'Amazon,Inc',
                price: '3283.26',
                change: '-0.05%',
                graphColor: Colors.red,
              ),
              SizedBox(
                height: 16.0,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
