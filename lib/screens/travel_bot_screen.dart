import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:google_generative_ai/google_generative_ai.dart';

Future<void> main() async {
  await dotenv.load(fileName: "notepad.env");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      home: const ChatScreen(),
    );
  }
}

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _controller = TextEditingController();
  final List<Message> _messages = [];
  late GenerativeModel _model;
  late ChatSession _chat;

  @override
  void initState() {
    super.initState();
    _initializeChatModel();
  }

  Future<void> _initializeChatModel() async {
    const apiKey = "AIzaSyDAOa3m7p1rOxwqH8AjrzUM4_238Wzu5gs";

    _model = GenerativeModel(
      model: 'gemini-1.5-flash',
      apiKey: apiKey,
      generationConfig: GenerationConfig(
        temperature: 1,
        topK: 64,
        topP: 0.95,
        maxOutputTokens: 8192,
        responseMimeType: 'text/plain',
      ),
      systemInstruction: Content.system(
          'You are a AI for a travel app. Users will ask questions and you will answer them. First, greet the user briefly, introduce yourself, and tell them how you can help them. Use emojis, one per sentence. Set the question length to a maximum of 5 paragraphs. Use the Turkish language. Just talk about travel and country cultures. If the user asks about a different topic, tell them that you can only answer on topics you are interested in.'),
    );

    _chat = _model.startChat(history: []);
  }

  Future<void> _sendMessage(String message) async {
    setState(() {
      _messages.add(Message(text: message, isUser: true));
    });
    _controller.clear();

    final content = Content.text(message);
    final response = await _chat.sendMessage(content);

    setState(() {
      _messages.add(Message(text: response.text ?? '', isUser: false));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: ClipRRect(
          borderRadius: const BorderRadius.vertical(
            bottom:
                Radius.circular(20.0), // Köşeleri kıvrımlı yapmak için yarıçap
          ),
          child: AppBar(
            title: Text(
              'Travel Bot',
              style: GoogleFonts.poppins(
                  color: Colors.red, fontWeight: FontWeight.bold),
            ),
            centerTitle: true,
            backgroundColor: const Color.fromARGB(31, 255, 103, 2),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                final message = _messages[index];
                return ListTile(
                  leading: message.isUser
                      ? null
                      : const CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/ai_avatar.jpg'),
                        ),
                  trailing: message.isUser
                      ? const CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/user_avatar.jpg'),
                        )
                      : null,
                  title: Align(
                    alignment: message.isUser
                        ? Alignment.centerRight
                        : Alignment.centerLeft,
                    child: Container(
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        color: message.isUser ? Colors.blue : Colors.grey[300],
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Text(
                        message.text,
                        style: TextStyle(
                          color: message.isUser ? Colors.white : Colors.black,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: const InputDecoration(
                      hintText: 'Mesajınızı yazın...',
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.send),
                  onPressed: () {
                    if (_controller.text.isNotEmpty) {
                      _sendMessage(_controller.text);
                    }
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Message {
  final String text;
  final bool isUser;

  Message({required this.text, required this.isUser});
}
