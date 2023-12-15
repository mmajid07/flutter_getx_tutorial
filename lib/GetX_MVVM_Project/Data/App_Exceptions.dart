
class AppException implements Exception{
  final _message;
  final _prefix;

  AppException([this._message, this._prefix]);

  String toString(){
    return '$_message$_prefix';
  }
}

class InternetException extends AppException{
  InternetException(String ? message): super (message , 'No Internet');
}

class RequestTimeOut extends AppException{
  RequestTimeOut(String? message):super (message , 'Request time out');
}

class ServerSideException extends AppException{
  ServerSideException(String? message):super (message , 'Server side Exception');
}

class CommunicationError extends AppException{
  CommunicationError(String? message):super (message , 'Communication Exception');
}