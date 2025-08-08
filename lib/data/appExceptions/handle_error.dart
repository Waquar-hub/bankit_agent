import 'package:flutter/material.dart';
import 'app_exceptions.dart';

Function(Object) handleErrorWithContext(BuildContext context) {
  return (Object error) {
    if (error is NoInternetException) {
      showDialog(
        context: context,
        builder: (_) => AlertDialog(
          title: Text("No Internet"),
          content: Text(error.message),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text("OK"),
            )
          ],
        ),
      );
    } else if (error is AppException) {
      // Show other API exception messages
      showDialog(
        context: context,
        builder: (_) => AlertDialog(
          title: Text("Error"),
          content: Text(error.message),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text("OK"),
            )
          ],
        ),
      );
    } else {
      // Fallback for unknown errors
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Something went wrong")),
      );
    }
  };
}

