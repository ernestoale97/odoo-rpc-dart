/// Odoo exceptions thrown by Odoo client
library;

/// Generic exception thrown on error coming from Odoo server.
class OdooException implements Exception {
  /// Exception message coming from Odoo server.
  String message;
  String? debug;
  OdooException(this.message, {this.debug});

  @override
  String toString() => 'OdooException: $message';
}

/// Exception for session expired error.
class OdooSessionExpiredException extends OdooException {
  OdooSessionExpiredException(super.message);

  @override
  String toString() => 'OdooSessionExpiredException: $message';
}
