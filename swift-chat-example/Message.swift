//
//  Message.swift
//  swift-chat-example
//
//  Created by kyouhei karino on 2020/09/28.
//

import SwiftUI

struct Message: View {
    var text: String
    var isSender: Bool
    
    var body: some View {
        HStack {
            if isSender {
                Spacer()
            }
            Text(text)
                .fontWeight(.bold)
                .lineLimit(nil)
                .foregroundColor(.white)
                .padding(10)
                .background(isSender ? Color.green : Color.blue)
                .clipShape(RoundedRectangle(cornerRadius: 8))
                .listRowInsets(isSender ? nil : EdgeInsets())
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(
                            Color.clear,
                            lineWidth: 1
                    )
                        .shadow(
                            color: Color.secondary,
                            radius: 3
                    )
            )
        }

    }
}

struct Message_Previews: PreviewProvider {
    static var previews: some View {
        Message(text: "Hello", isSender: true)
        Message(text: "World", isSender: false)
    }
}
