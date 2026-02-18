QueueLess – Digital Token System for Faculty Cabins

📌 Project Overview

QueueLess is a Flutter-based mobile application designed to manage and organize student visits to faculty cabins using a digital token system. Instead of standing in physical queues, students can take a digital token and track their position in real time.

This project is developed as part of ALA-2 for the Android Development Framework course.

🎯 Objectives

Integrate a public REST API into a Flutter application

Parse JSON data using Dart

Display dynamic data using ListView

Demonstrate asynchronous programming in Flutter

Upload and manage project code using GitHub

🌐 REST API Integration

Public API Used: Random User API

API Endpoint: https://randomuser.me/api/?results=10

The API is used to fetch sample faculty data (name and profile image) in JSON format. This data is parsed and displayed dynamically in the application.

🛠️ Implementation Details

The http package is used to make API requests.

JSON data is parsed using Dart model classes.

FutureBuilder handles asynchronous data fetching.

Faculty data is displayed using ListView.builder().

Each faculty item includes:

Profile image

Faculty name

“Take Token” button (QueueLess concept)

📱 Application Output

When the application starts, a loading indicator is shown while data is fetched from the REST API. After successful retrieval, a list of faculty members is displayed with their images and names. The data is fetched live from the internet, proving correct API integration and JSON parsing.

🧰 Technologies Used

Flutter Framework

Dart Programming Language

REST API (Random User API)

HTTP Package

Android Studio

📂 Project Structure
lib/
 ├── models/
 │     └── faculty_model.dart
 ├── services/
 │     └── api_service.dart
 ├── screens/
 │     └── faculty_list_screen.dart
 └── main.dart

✅ Conclusion

QueueLess successfully demonstrates REST API integration, JSON parsing, and dynamic UI rendering using Flutter. This project fulfills all the requirements of ALA-2 while maintaining continuity with the original QueueLess application idea.
