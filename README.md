# Unhandled Exceptions and Missing Key Checks in Asynchronous Data Fetching

This example demonstrates a common error in Dart:  unhandled exceptions and missing key checks when working with asynchronous operations and JSON data. The provided `fetchData` function fetches data from an API, but lacks robust error handling and key existence checks.

## Problem

The `fetchData` function has several issues:

1. **Generic Exception Handling:** The `catch (e)` block is too broad, making it difficult to debug specific errors. 
2. **Missing Key Checks:**  It assumes the JSON response contains a 'key'. Accessing `jsonData['key']` directly will throw an exception if 'key' is absent.
3. **Incomplete Error Handling**:  The code only checks the HTTP status code. Other errors (like network issues or JSON decoding failures) may still occur.

## Solution

The solution involves improving error handling and adding key checks before accessing JSON data.

## How to run

1. Save the code in `bug.dart` and `bugSolution.dart`
2. Run with the Dart command line tool: `dart bug.dart` or `dart bugSolution.dart`