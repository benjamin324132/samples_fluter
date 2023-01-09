import 'package:flutter/material.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;

class SocketScreen extends StatefulWidget {
  const SocketScreen({Key? key}) : super(key: key);

  @override
  _SocketScreenState createState() => _SocketScreenState();
}

class _SocketScreenState extends State<SocketScreen> {
  late IO.Socket _socket;
  bool conected = false;

  @override
  void initState() {
    super.initState();
    connect();
  }

  void connect() {
    _socket = IO.io('https://elemental-quixotic-owner.glitch.me/', <String, dynamic>{
      'transports': ['websocket'],
      'autoConnect': false
    });
    _socket.connect();
    // listen to socket
    _socket.onConnect((data) {
      print('connected!');
      setState(() {
        conected = true;
      });
      _socket.on('send_ping', (msgData) {
        print("Ping received");
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text("Ping from Server"),
          ),
        );
      });
    });
  }

  @override
  void dispose() {
    _socket.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
              right: 12,
              top: 50,
              child: Container(
                height: 12,
                width: 12,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: conected ? Colors.greenAccent : Colors.redAccent,
                ),
              )),
          Center(
              child: TextButton(
                  onPressed: () {
                    _socket.emit('recive_ping', {"data": "Benja"});
                  },
                  child: const Text("Socket"))),
        ],
      ),
    );
  }
}
