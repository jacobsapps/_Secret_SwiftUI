//
//  SecretSwiftUIApp.swift
//  SecretSwiftUI
//
//  Created by Jacob Bartlett on 11/12/2024.
//

import Foundation

let chatMessages: [ChatMessage] = [
    ChatMessage(id: UUID().uuidString, firstName: "Alice", text: "Hey! How's it going?", date: Date().addingTimeInterval(-10000).addingTimeInterval(100 * 1)),
    ChatMessage(id: UUID().uuidString, firstName: "Bob", text: "Not bad, you?", date: Date().addingTimeInterval(-10000).addingTimeInterval(100 * 2)),
    ChatMessage(id: UUID().uuidString, firstName: "Alice", text: "Good, just busy with work. You know how it is.", date: Date().addingTimeInterval(-10000).addingTimeInterval(100 * 3)),
    ChatMessage(id: UUID().uuidString, firstName: "Bob", text: "Totally. What’s keeping you so busy?", date: Date().addingTimeInterval(-10000).addingTimeInterval(100 * 4)),
    ChatMessage(id: UUID().uuidString, firstName: "Alice", text: "Deadlines. Lots of deadlines. 😅", date: Date().addingTimeInterval(-10000).addingTimeInterval(100 * 5)),
    ChatMessage(id: UUID().uuidString, firstName: "Bob", text: "Oof, sounds rough. Anything I can do to help?", date: Date().addingTimeInterval(-10000).addingTimeInterval(100 * 6)),
    ChatMessage(id: UUID().uuidString, firstName: "Alice", text: "Haha, unless you can write my reports for me!", date: Date().addingTimeInterval(-10000).addingTimeInterval(100 * 7)),
    ChatMessage(id: UUID().uuidString, firstName: "Bob", text: "I mean… I’d probably mess them up, so maybe not. 😅", date: Date().addingTimeInterval(-10000).addingTimeInterval(100 * 8)),
    ChatMessage(id: UUID().uuidString, firstName: "Alice", text: "Haha, thanks for the offer though.", date: Date().addingTimeInterval(-10000).addingTimeInterval(100 * 9)),
    ChatMessage(id: UUID().uuidString, firstName: "Bob", text: "Anytime. So, any plans for the weekend?", date: Date().addingTimeInterval(-10000).addingTimeInterval(100 * 10)),
    ChatMessage(id: UUID().uuidString, firstName: "Alice", text: "Not yet. You?", date: Date().addingTimeInterval(-10000).addingTimeInterval(100 * 11)),
    ChatMessage(id: UUID().uuidString, firstName: "Bob", text: "Thinking of going hiking. Want to join?", date: Date().addingTimeInterval(-10000).addingTimeInterval(100 * 12)),
    ChatMessage(id: UUID().uuidString, firstName: "Alice", text: "Ooh, that sounds fun! Where are you thinking of going?", date: Date().addingTimeInterval(-10000).addingTimeInterval(100 * 13)),
    ChatMessage(id: UUID().uuidString, firstName: "Bob", text: "That trail near Pinewood Lake. Supposed to have great views.", date: Date().addingTimeInterval(-10000).addingTimeInterval(100 * 14)),
    ChatMessage(id: UUID().uuidString, firstName: "Alice", text: "Count me in!", date: Date().addingTimeInterval(-10000).addingTimeInterval(100 * 15)),
    ChatMessage(id: UUID().uuidString, firstName: "Bob", text: "Awesome! Let’s meet at 8 AM at the parking lot?", date: Date().addingTimeInterval(-10000).addingTimeInterval(100 * 16)),
    ChatMessage(id: UUID().uuidString, firstName: "Alice", text: "8 AM? That’s so early! 😩", date: Date().addingTimeInterval(-10000).addingTimeInterval(100 * 17)),
    ChatMessage(id: UUID().uuidString, firstName: "Bob", text: "It’s worth it, I promise. Sunrise views!", date: Date().addingTimeInterval(-10000).addingTimeInterval(100 * 18)),
    ChatMessage(id: UUID().uuidString, firstName: "Alice", text: "Okay, fine. But I’m bringing coffee.", date: Date().addingTimeInterval(-10000).addingTimeInterval(100 * 19)),
    ChatMessage(id: UUID().uuidString, firstName: "Bob", text: "Deal. I’ll bring snacks.", date: Date().addingTimeInterval(-10000).addingTimeInterval(100 * 20)),
    ChatMessage(id: UUID().uuidString, firstName: "Alice", text: "Sounds perfect. Looking forward to it!", date: Date().addingTimeInterval(-10000).addingTimeInterval(100 * 21)),
    ChatMessage(id: UUID().uuidString, firstName: "Bob", text: "Same here. Oh, and bring a jacket—it might be chilly.", date: Date().addingTimeInterval(-10000).addingTimeInterval(100 * 22)),
    ChatMessage(id: UUID().uuidString, firstName: "Alice", text: "Will do. Thanks for the heads-up.", date: Date().addingTimeInterval(-10000).addingTimeInterval(100 * 23)),
    ChatMessage(id: UUID().uuidString, firstName: "Bob", text: "No problem. Hey, I’ve got to run, but I’ll text you later.", date: Date().addingTimeInterval(-10000).addingTimeInterval(100 * 24)),
    ChatMessage(id: UUID().uuidString, firstName: "Alice", text: "Sure thing. Bye for now!", date: Date().addingTimeInterval(-10000).addingTimeInterval(100 * 25)),
    ChatMessage(id: UUID().uuidString, firstName: "Bob", text: "Bye!", date: Date().addingTimeInterval(-10000).addingTimeInterval(100 * 26)),
    ChatMessage(id: UUID().uuidString, firstName: "Bob", text: "Hey, you free tonight?", date: Date().addingTimeInterval(-10000).addingTimeInterval(100 * 27)),
    ChatMessage(id: UUID().uuidString, firstName: "Alice", text: "Hi Bob! Not sure yet, why?", date: Date().addingTimeInterval(-10000).addingTimeInterval(100 * 28)),
    ChatMessage(id: UUID().uuidString, firstName: "Bob", text: "Thought we could catch a movie. There’s a new sci-fi one out.", date: Date().addingTimeInterval(-10000).addingTimeInterval(100 * 29)),
    ChatMessage(id: UUID().uuidString, firstName: "Alice", text: "Oh, which one?", date: Date().addingTimeInterval(-10000).addingTimeInterval(100 * 30)),
    ChatMessage(id: UUID().uuidString, firstName: "Bob", text: "'Galactic Odyssey.' Looks epic.", date: Date().addingTimeInterval(-10000).addingTimeInterval(100 * 31)),
    ChatMessage(id: UUID().uuidString, firstName: "Alice", text: "I’ve been wanting to see that! What time?", date: Date().addingTimeInterval(-10000).addingTimeInterval(100 * 32)),
    ChatMessage(id: UUID().uuidString, firstName: "Bob", text: "7 PM showing at the downtown theater.", date: Date().addingTimeInterval(-10000).addingTimeInterval(100 * 33)),
    ChatMessage(id: UUID().uuidString, firstName: "Alice", text: "Perfect. Let’s do it.", date: Date().addingTimeInterval(-10000).addingTimeInterval(100 * 34)),
    ChatMessage(id: UUID().uuidString, firstName: "Bob", text: "Awesome. I’ll grab the tickets.", date: Date().addingTimeInterval(-10000).addingTimeInterval(100 * 35)),
    ChatMessage(id: UUID().uuidString, firstName: "Alice", text: "Thanks! I’ll buy the popcorn.", date: Date().addingTimeInterval(-10000).addingTimeInterval(100 * 36)),
    ChatMessage(id: UUID().uuidString, firstName: "Bob", text: "Deal. See you later!", date: Date().addingTimeInterval(-10000).addingTimeInterval(100 * 37)),
    ChatMessage(id: UUID().uuidString, firstName: "Alice", text: "See you!", date: Date().addingTimeInterval(-10000).addingTimeInterval(100 * 38)),
    ChatMessage(id: UUID().uuidString, firstName: "Bob", text: "By the way, don’t forget your 3D glasses if you have them!", date: Date().addingTimeInterval(-10000).addingTimeInterval(100 * 39)),
    ChatMessage(id: UUID().uuidString, firstName: "Alice", text: "Haha, will do. Can’t wait!", date: Date().addingTimeInterval(-10000).addingTimeInterval(100 * 40))
]
