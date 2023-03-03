
import 'package:socket_io_client/socket_io_client.dart';
import '../clients/socket_client.dart';

class SocketRepository {
  final _socketClient = SocketClient.instance.socket!;

  Socket get socketClient => _socketClient;

  void joinRoom(String documentId) {
    _socketClient.emit('join', documentId);
  }

  void typing(Map<String, dynamic> data) {
    _socketClient.emit('typing', data);
  }

  void sendMessage(Map<String, dynamic> data) {
    _socketClient.emit('send:message', data);
  }

  void messageListener(Function(Map<String, dynamic>) func) {
    _socketClient.on('message', (data) => func(data));
  }
}