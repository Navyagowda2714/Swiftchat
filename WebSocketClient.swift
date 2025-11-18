import Foundation

/// Simple in-memory mock WebSocket used for testing.
/// It just echoes back anything you send.
final class WebSocketClient {

    private let stream: AsyncStream<Data>
    private let continuation: AsyncStream<Data>.Continuation

    init() {
        var cont: AsyncStream<Data>.Continuation!
        self.stream = AsyncStream<Data> { c in
            cont = c
        }
        self.continuation = cont
    }

    /// Anyone who wants to listen to incoming messages can iterate this stream.
    var incomingMessages: AsyncStream<Data> { stream }

    /// Fake "connect" – just waits briefly.
    func connect() async {
        try? await Task.sleep(nanoseconds: 300_000_000)
    }

    func disconnect() {
        continuation.finish()
    }

    /// Echo the data back into `incomingMessages`.
    func send(_ data: Data) async throws {
        continuation.yield(data)
    }
}
