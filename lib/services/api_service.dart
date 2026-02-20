import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter_dotenv/flutter_dotenv.dart';

/// Service for interacting with the Google Gemini generative language API.
class ApiService {
  static String get _apiKey => dotenv.env['API_KEY'] ?? '';

  static const String _apiUrl =
      'https://generativelanguage.googleapis.com/v1beta/models/gemini-1.5-flash:generateContent';

  /// Generates an AI response for the given [inputText].
  ///
  /// When [flirtyMode] is true, the response will be a romantic/flirty reply.
  /// Otherwise, a witty, intelligent reply is returned.
  ///
  /// Throws an [Exception] if the API request fails.
  static Future<String> generateResponse({
    required String inputText,
    required bool flirtyMode,
  }) async {
    if (_apiKey.isEmpty) {
      throw Exception(
          'API key not configured. Add your Gemini API key to .env');
    }

    // Limit input length to reduce abuse/runaway costs.
    final String safeInput =
        inputText.length > 500 ? inputText.substring(0, 500) : inputText;

    final String promptText = flirtyMode
        ? "Give a single flirty reply that sounds like a romantic pickup line "
            "for the following text message: '$safeInput'"
        : "Give a reply that sounds like a highly intelligent and witty person "
            "for the following text message: '$safeInput'";

    final Map<String, dynamic> requestBody = {
      'contents': [
        {
          'parts': [
            {'text': promptText}
          ]
        }
      ],
      'generationConfig': {
        'temperature': 0.8,
        'candidateCount': 1,
      },
    };

    final response = await http.post(
      Uri.parse('$_apiUrl?key=$_apiKey'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(requestBody),
    );

    if (response.statusCode == 200) {
      final Map<String, dynamic> responseData =
          json.decode(response.body) as Map<String, dynamic>;
      final List<dynamic>? candidates =
          responseData['candidates'] as List<dynamic>?;

      if (candidates != null && candidates.isNotEmpty) {
        final content =
            candidates[0]['content'] as Map<String, dynamic>?;
        final parts = content?['parts'] as List<dynamic>?;
        if (parts != null && parts.isNotEmpty) {
          return parts[0]['text'] as String? ?? 'No response generated.';
        }
      }
      return 'No response generated.';
    } else {
      throw Exception(
          'API request failed with status ${response.statusCode}');
    }
  }
}
