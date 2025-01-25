import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMassage;

 const  Failure(this.errorMassage);
}
class ServerFailure extends Failure{
  ServerFailure( super.errorMassage);




  factory ServerFailure.fromDioError(DioError dioError)
  {
    switch(dioError.type){
      
      case DioExceptionType.connectionTimeout:
       return ServerFailure( 'Connection Timeout with ApiServer');
      
      case DioExceptionType.sendTimeout:
       return ServerFailure( 'Send Timeout with ApiServer');
      
      case DioExceptionType.receiveTimeout:
       return ServerFailure( 'Receive Timeout with ApiServer');
      
      case DioExceptionType.badCertificate:
      
      case DioExceptionType.badResponse:
       return ServerFailure.fromResponse(dioError.response!.statusCode!, dioError.response!.data);
      
      case DioExceptionType.cancel:
       return ServerFailure('Request was canceled ');
      
      case DioExceptionType.connectionError:
        return ServerFailure('No Internet Connection ');
     
      case DioExceptionType.unknown:
       if (dioError.message!.contains('SocketException')){
        return ServerFailure('No Internet Connection ');
       }
       return ServerFailure('try Again later');
       default:
       return ServerFailure('Ops There was an Error , please try later!');
    }
  }

  factory ServerFailure.fromResponse(int stateCode ,dynamic response){
    if(stateCode == 400 || stateCode == 401 || stateCode == 403){
      return ServerFailure(response['error']['massage']);
    }else if (stateCode == 404)
    {
      return ServerFailure('Your Request not found , please try later! ');
    }else if (stateCode == 500)
    {
      return ServerFailure('Internal Server Error , please try later! ');
    } else 
    {
     return ServerFailure('Ops There was an Error , please try later!');
    }
  }
}