import 'package:dio/dio.dart' hide Headers;

/// * The ServerError class is an exception class that represents a server error.
/// * It contains information about the error, such as the error code and message.
/// * The class is used to handle errors that occur during an HTTP request.
/// * If an error occurs, the error message is displayed.
class ServerError implements Exception {
  int? _errorCode;
  String? _errorMessage;
  String? _error;

  ServerError({required Object error}) {
    error = error as DioException;
    _handleError(error);
  }

  getErrorCode() {
    return _errorCode;
  }

  getErrorMessage() {
    return _errorMessage;
  }

  getOtherError() {
    return _error;
  }

  /// * The _handleError method handles the error and generates an error message.
  /// * The error message is generated based on the type of error that occurred.
  _handleError(DioException error) {
    switch (error.type) {
      case DioExceptionType.cancel:
        _errorMessage = "Petición cancelada.";
        break;

      case DioExceptionType.connectionTimeout:
      case DioExceptionType.receiveTimeout:
        _errorMessage = "El tiempo de conexión expiro.";
        break;

      case DioExceptionType.unknown:
        _errorMessage = 'Se presenta el siguiente error: ${error.message}';
        break;

      case DioExceptionType.sendTimeout:
        _errorMessage =
            "El tiempo de espera al recibir la respuesta del servidor ha expirado.";
        break;

      case DioExceptionType.badCertificate:
        _errorMessage = 'Certificado no válido.';
        break;

      case DioExceptionType.connectionError:
        _errorMessage = 'Error de conexión.';
        break;

      case DioExceptionType.badResponse:
        _getErrorMessage(error.response!.statusCode!);
        break;
    }
    _generateException(_errorMessage!);
  }

  /// * The _getErrorMessage method generates an error message based on the status code.
  _getErrorMessage(int statusCode){
    switch (statusCode) {
      case 400:
        _errorMessage = 'Petición incorrecta.';
        break;
      case 401:
        _errorMessage = 'Sin autorización.';
        break;
      case 403:
        _errorMessage = 'Acceso denegado.';
        break;
      case 404:
        _errorMessage = 'Recurso no encontrado.';
        break;
      case 500:
        _errorMessage = 'Error interno del servidor.';
        break;
      case 503:
        _errorMessage = 'Servicio no disponible.';
        break;
      default:
        _errorMessage = "Código de respuesta recibido: $_errorCode";
    }
  }

  /// * The _generateException method generates an exception with the error message.
  _generateException(String error) {
    print(error);
  }
}
