# Swiftchat
Displays the conversation, message list, and text composer. Handles scroll behaviour, keyboard focus, and typing indicators.

📱 SwiftChat

A modern, lightweight iOS chat application built with Swift, SwiftUI, Combine, and a modular Repository + ViewModel architecture.

SwiftChat supports real-time messaging using a WebSocket client, clean MVVM structure, and smooth chat UI with typing indicators and auto-scroll.

🚀 Features

🔥 Real-time messaging using WebSockets

💬 Chat UI with message bubbles, timestamps, read-friendly layout

🧠 MVVM architecture (ChatView → ChatViewModel → MessageRepository)

⚡ Async/Await support for concurrency

🔄 Typing indicator support

📱 SwiftUI-native clean design

🎯 Easily extendable: offline support, message persistence, group chats, etc.


WebSocketMessageRepository (Implementation)

Uses RealtimeClient to send/receive WebSocket events.

RealtimeClient

Handles socket connection, send/receive JSON packets, reconnect logic.


🖥️ Requirements

macOS 14+

Xcode 15+

iOS 17+

Swift 5.9+

🛠️ TODO / Next Milestones

 Local database (Core Data / Realm)
 
 Message attachments (images, videos)
 
 Push notifications
 
 Group chats
 
 Dark mode bubble customization
 
 Offline-first message sync
 
