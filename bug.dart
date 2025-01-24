```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Success!  Do something with the data.
      final jsonData = jsonDecode(response.body);
      // Accessing jsonData['key'] here is prone to an error if 'key' doesn't exist
      print(jsonData['key']);
    } else {
      // Error handling.  However, this doesn't cover all potential errors.
      throw Exception('Failed to load data');
    }
  } catch (e) {
    // This catch block is too generic.  It's better to be more specific about what to catch.
    print('Error: $e');
  }
}
```