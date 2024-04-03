import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  bool _isMessageSent = false;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('bAInellm'),
        actions: [
          PopupMenuButton(
            itemBuilder: (context) => [
              const PopupMenuItem(value: 'profile', child: Text('Profile')),
              const PopupMenuItem(value: 'settings', child: Text('Settings')),
              const PopupMenuItem(value: 'logout', child: Text('Log Out')),
            ],
          ),
        ],
      ),
      body: Column(
        children: [
          const Text('Welcome to bAInellm chatbot'),
          TabBar(
            controller: _tabController,
            tabs: const [
              Tab(text: 'Simple'),
              Tab(text: 'Complex'),
              Tab(text: 'Coding'),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                _buildChatArea('green'),
                _buildChatArea('yellow'),
                _buildChatArea('purple'),
              ],
            ),
          ),
          _isMessageSent ? _buildTypingIndicator() : const SizedBox.shrink(),
          _buildInputArea()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.more_horiz), label: 'Others'),
          BottomNavigationBarItem(icon: Icon(Icons.call), label: 'Calls'),
          BottomNavigationBarItem(icon: Icon(Icons.map), label: 'Maps'),
        ],
      ),
    );
  }

  Widget _buildChatArea(String color) {
    return Container(
      color: Color(int.parse('0xFF$color')),
      // Add ListView for chat messages here
    );
  }

  // Widget _buildTypingIndicator() {
  //   // Add animation for typing dots
  // }
  //
  // Widget _buildInputArea() {
  //   // Include TextField, Send button, etc.
  // }





  Widget _buildTypingIndicator() {
    return const Row(
      children: [
        // Replace with animated dots or your desired indicator...
        Icon(Icons.more_horiz, color: Colors.grey),
        SizedBox(width: 5),
        Icon(Icons.more_horiz, color: Colors.grey),
        SizedBox(width: 5),
        Icon(Icons.more_horiz, color: Colors.grey),
      ],
    );
  }

  Widget _buildInputArea() {
    return Container(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          const Expanded(
            child: TextField(
              decoration: InputDecoration(hintText: "Type your message..."),
            ),
          ),
          const SizedBox(width: 10),
          IconButton(
            icon: const Icon(Icons.send),
            onPressed: () {
              // Handle sending the message
            },
          )
        ],
      ),
    );
  }





}



//
// Widget _buildTypingIndicator() {
//   return Row(
//     children: const [
//       // Replace with animated dots or your desired indicator...
//       Icon(Icons.more_horiz, color: Colors.grey),
//       SizedBox(width: 5),
//       Icon(Icons.more_horiz, color: Colors.grey),
//       SizedBox(width: 5),
//       Icon(Icons.more_horiz, color: Colors.grey),
//     ],
//   );
// }
//
// Widget _buildInputArea() {
//   return Container(
//     padding: const EdgeInsets.all(10.0),
//     child: Row(
//       children: [
//         Expanded(
//           child: TextField(
//             decoration: const InputDecoration(hintText: "Type your message..."),
//           ),
//         ),
//         const SizedBox(width: 10),
//         IconButton(
//           icon: const Icon(Icons.send),
//           onPressed: () {
//             // Handle sending the message
//           },
//         )
//       ],
//     ),
//   );
// }
