import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Firebase Chat App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ChatScreen(),
    );
  }
}

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _textController = TextEditingController();
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  void _sendMessage() {
    if (_textController.text.isNotEmpty) {
      _firestore.collection('messages').add({
        'text': _textController.text,
        'imageUrl': '', // Add imageUrl field here
        'createdAt': Timestamp.now(),
      });
      _textController.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Firebase Chat'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: StreamBuilder<QuerySnapshot>(
              stream: _firestore.collection('messages').orderBy('createdAt').snapshots(),
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
                final messages = snapshot.data!.docs.reversed;
                List<Widget> messageWidgets = [];
                for (var message in messages) {
                  final messageText = message['text'];
                  final imageUrl = message['imageUrl']; // Get imageUrl from Firestore
                  final createdAt = (message['createdAt'] as Timestamp).toDate(); // Get createdAt from Firestore and convert to DateTime
                  final messageWidget = MessageBubble(
                    text: messageText,
                    imageUrl: imageUrl,
                    createdAt: createdAt,
                  );
                  messageWidgets.add(messageWidget);
                }
                return ListView(
                  reverse: true,
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  children: messageWidgets,
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: TextField(
                    controller: _textController,
                    decoration: InputDecoration(
                      hintText: 'Enter your message...',
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send),
                  onPressed: _sendMessage,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MessageBubble extends StatelessWidget {
  final String text;
  final String imageUrl;
  final DateTime createdAt;

  MessageBubble({required this.text, required this.imageUrl, required this.createdAt});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          if (imageUrl.isNotEmpty)
            Image.network(
              imageUrl,
              width: 200,
              height: 200,
            ),
          Material(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(12),
            elevation: 5,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Text(
                    text,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    DateFormat('MMM dd, HH:mm').format(createdAt), // Format createdAt using DateFormat
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  DateFormat(String s) {}
}
