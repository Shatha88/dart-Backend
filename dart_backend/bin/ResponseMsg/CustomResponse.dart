// ignore_for_file: file_names

import 'dart:convert';

import 'package:shelf/shelf.dart';

class CustomResponse {
  errorResponse({required String msg, required String? statusCode}) {
    return Response.badRequest(
      body: json.encode({"msg": msg, "statusCode": 400}),
      headers: {"content-type": "applecation/json"},
    );
  }

  successResponse({required String msg, required int statusCode, List? data}) {
    return Response.ok(
      json.encode({"msg": msg, "statusCode": 200, ...data ?? {}}),
      headers: {"content-type": "applecation/json"},
    );
  }
}
