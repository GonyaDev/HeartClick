//
//  ContentView.swift
//  HeartClick
//
//  Created by Алексей Гончаров on 4/26/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var changeColor = false
    @State private var changeSize = false
    
    var body: some View {
        VStack(spacing: 70) {
            Text("Click the heart!")
                .font(.system(.largeTitle))
            Image(systemName: "heart.fill")
                .font(.system(size: 200))
                .foregroundColor(changeColor ? .purple : .red)
                .scaleEffect(changeSize ? 1.5 : 1)
                .animation(.default)
                .onTapGesture {
                    self.changeColor.toggle()
                }
                .onLongPressGesture {
                    self.changeSize.toggle()
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
