//
//  ContentView.swift
//  swift-chat-example
//
//  Created by kyouhei karino on 2020/09/27.
//

import SwiftUI

struct ContentView: View {
    @State private var inputValue: String = ""
    
    private var maxWidth: CGFloat {
        100
    }
    
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .bottom) {
                List {
                    Message(text: "Hello", isSender: true)
                    ForEach(0..<11) { _ in
                        Message(text: "World", isSender: false)
                    }
                }
                .padding(.bottom, geometry.safeAreaInsets.bottom + 56)

                TextField("..input", text: $inputValue)
                    .padding(10)
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
