import Foundation

@MainActor
final class WebSocketMessageRepository: MessageRepository {

    // MARK: - Streams required by MessageRepository

    let updates: AsyncStream<Message>
    let typingEvents: AsyncStream<(UUID, UUID, Bool)>

    private let updateCont: AsyncStream<Message>.Continuation
    private let typingCont: AsyncStream<(UUID, UUID, Bool)>.Continuation

    // MARK: - Init

    init() {
        var uCont: AsyncStream<Message>.Continuation!
        self.updates = AsyncStream { continuation in
            uCont = continuation
        }
        self.updateCont = uCont

        var tCont: AsyncStream<(UUID, UUID, Bool)>.Continuation!
        self.typingEvents = AsyncStream { continuation in
            tCont = continuation
        }
        self.typingCont = tCont
    }

    // MARK: - MessageRepository methods

    func connect() async {
        // No real network yet – nothing to do
    }

    func loadMessages(conversationID: UUID, limit: Int) async throws -> [Message] {
        // No persistence – just return empty for now
        return []
    }

    func join(conversationID: UUID) async throws {
        // In-memory only – nothing to join
    }

    func send(message: Message) async throws -> Message {
        // Immediately push the message into the updates stream
        updateCont.yield(message)
        return message
    }

    func sendTyping(conversationID: UUID, isTyping: Bool) async throws {
        // Emit a typing event from the current user
        typingCont.yield((conversationID, User.me.id, isTyping))
    }

    func markRead(conversationID: UUID, messageID: UUID) async throws {
        // Not implemented yet; safe to ignore for now
    }
}
