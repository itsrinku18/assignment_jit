import 'package:flutter/material.dart';

import 'custom_list_tile.dart';

class WatchlistScreen extends StatelessWidget {
  const WatchlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Number of tabs
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Search TextField
            TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                hintStyle: const TextStyle(color: Colors.grey),
                prefixIcon: const Icon(Icons.search),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: const BorderSide(
                    color: Color(0xFFEAEAEA),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16.0),

            // TabBar for Watchlist1, Watchlist2, Watchlist3
            Container(
              color: Colors.white,
              child: const TabBar(

                indicatorColor: Colors.blue,
                labelColor: Colors.green,
                unselectedLabelColor: Colors.grey,
                tabs: [
                  Tab(text: "Watchlist 1"),
                  Tab(text: "Watchlist 2"),
                  Tab(text: "Watchlist 3"),
                ],
              ),
            ),
            // const SizedBox(height: 16.0),

            // TabBarView to show content for each tab
            Expanded(
              child: TabBarView(
                children: [
                  // Watchlist 1 Content
                  ListView(
                    children: const [
                      CustomListTile(
                        companyLogo: 'assets/icons/apple_logo.png',
                        companyName: 'AAPL',
                        companyFullName: 'Apple, Inc',
                        price: '142.65',
                        change: '+0.81%',
                        graphColor: Colors.green,
                      ),
                      SizedBox(height: 16.0,),
                      CustomListTile(
                        companyLogo: 'assets/icons/microsoft_logo.png',
                        companyName: 'GOOGL',
                        companyFullName: 'Alphabet Inc.',
                        price: '2734.45',
                        change: '-0.50%',
                        graphColor: Colors.red,
                      ),
                      SizedBox(height: 16.0,),
                      CustomListTile(
                        companyLogo: 'assets/icons/microsoft_logo.png',
                        companyName: 'GOOGL',
                        companyFullName: 'Alphabet Inc.',
                        price: '2734.45',
                        change: '-0.50%',
                        graphColor: Colors.red,
                      ),
                      SizedBox(height: 16.0,),
                      CustomListTile(
                        companyLogo: 'assets/icons/microsoft_logo.png',
                        companyName: 'GOOGL',
                        companyFullName: 'Alphabet Inc.',
                        price: '2734.45',
                        change: '-0.50%',
                        graphColor: Colors.red,
                      ),
                      SizedBox(height: 16.0,),
                      CustomListTile(
                        companyLogo: 'assets/icons/microsoft_logo.png',
                        companyName: 'GOOGL',
                        companyFullName: 'Alphabet Inc.',
                        price: '2734.45',
                        change: '-0.50%',
                        graphColor: Colors.red,
                      ),
                      SizedBox(height: 16.0,),
                      CustomListTile(
                        companyLogo: 'assets/icons/microsoft_logo.png',
                        companyName: 'GOOGL',
                        companyFullName: 'Alphabet Inc.',
                        price: '2734.45',
                        change: '-0.50%',
                        graphColor: Colors.red,
                      ),
                    ],
                  ),
                  // Watchlist 2 Content
                  ListView(
                    children: const [
                      CustomListTile(
                        companyLogo: 'assets/icons/microsoft_logo.png',
                        companyName: 'MSFT',
                        companyFullName: 'Microsoft Corporation',
                        price: '299.01',
                        change: '+1.24%',
                        graphColor: Colors.green,
                      ),
                      CustomListTile(
                        companyLogo: 'assets/icons/amazon_logo.png',
                        companyName: 'AMZN',
                        companyFullName: 'Amazon.com, Inc.',
                        price: '3475.79',
                        change: '+0.34%',
                        graphColor: Colors.green,
                      ),
                    ],
                  ),
                  // Watchlist 3 Content
                  ListView(
                    children: const [
                      CustomListTile(
                        companyLogo: 'assets/icons/tesla_logo.png',
                        companyName: 'TSLA',
                        companyFullName: 'Tesla, Inc.',
                        price: '700.24',
                        change: '+2.35%',
                        graphColor: Colors.green,
                      ),
                      CustomListTile(
                        companyLogo: 'assets/icons/facebook_logo.png',
                        companyName: 'META',
                        companyFullName: 'Meta Platforms, Inc.',
                        price: '345.12',
                        change: '-0.10%',
                        graphColor: Colors.red,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
