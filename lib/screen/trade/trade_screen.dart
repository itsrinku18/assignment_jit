import 'package:assignment_jit/screen/trade/widget/position_screen.dart';
import 'package:assignment_jit/screen/trade/widget/tab_icon.dart';
import 'package:assignment_jit/screen/trade/widget/watch_list_screen.dart';
import 'package:flutter/material.dart';

class TradeScreen extends StatefulWidget {
  const TradeScreen({super.key});

  @override
  State<TradeScreen> createState() => _TradeScreenState();
}

class _TradeScreenState extends State<TradeScreen> {
  // Index to track the selected tab
  int selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          // top section
          Stack(
            clipBehavior: Clip.none,
            children: [
              // Blue background container
              Container(
                height: size.height * 0.25,
                decoration: const BoxDecoration(
                  color: Color(0xFF00324D),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(16),
                    bottomRight: Radius.circular(16),
                  ),
                ),
              ),
              // White container with tab icons
              Positioned(
                top: size.height * 0.15,
                left: 16,
                right: 16,
                child: Container(
                  // padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    border:
                        Border.all(color: const Color(0xFFEAEAEA), width: 2.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Portfolio value',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFFA4ACB9),
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '₹13,240.11',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF0D0D12),
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  'Today',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                  ),
                                ),
                                SizedBox(width: 8.0),
                                Text(
                                  '+1.74',
                                  style: TextStyle(
                                    color: Colors.greenAccent,
                                    fontSize: 12,
                                  ),
                                ),
                                SizedBox(width: 8.0),
                                Icon(
                                  Icons.arrow_circle_up,
                                  color: Colors.green,
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        // Tab icons
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TabIcon(
                              label: "Watchlist",
                              assetPath: 'assets/icons/watchlist.png',
                              isSelected: selectedIndex == 0,
                              onTap: () {
                                setState(() {
                                  selectedIndex = 0;

                                });
                              },
                            ),
                            TabIcon(
                              label: "Position",
                              assetPath: 'assets/icons/position.png',
                              isSelected: selectedIndex == 1,
                              onTap: () {
                                setState(() {
                                  selectedIndex = 1;
                                });
                              },
                            ),
                            TabIcon(
                              label: "Performance",
                              assetPath: 'assets/icons/position.png',
                              isSelected: selectedIndex == 2,
                              onTap: () {
                                setState(() {
                                  selectedIndex = 2;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 130),
          // Space for the white container overlap
          // Dynamic content based on the selected tab
          // here we add a tab bar that show the class Watchlist1,2,3 how to achieve
          Expanded(
            child: IndexedStack(
              index: selectedIndex,
              children: const [
                WatchlistScreen(), // Tab 1: Watchlist
                PositionScreen(), // Tab 2: Position
                Center(child: Text("Performance")), // Tab 3: Placeholder
              ],
            ),
          ),
        ],
      ),
    );
  }
}
