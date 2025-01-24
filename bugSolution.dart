```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      // Check if 'key' exists before accessing
      if (jsonData.containsKey('key')) {
        print(jsonData['key']);
      } else {
        print('Error: The key "key" is missing from the JSON response.');
      }
    } else {
      throw Exception('Request failed with status: ${response.statusCode}.');
    }
  } on FormatException catch (e) {
    print('Error: Invalid JSON format: $e');
  } on http.ClientException catch (e) {
    print('Error: Network error: $e');
  } catch (e) {
    print('Error: An unexpected error occurred: $e');
  }
}
```