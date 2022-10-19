//
//  MagnificationGestureBootcamp.swift
//  LongPressGesture
//
//  Created by Bishowjit Ray on 18/10/22.
//

import SwiftUI

struct MagnificationGestureBootcamp: View {
    @State var currentAmount: CGFloat = 0
    @State var lastAmount: CGFloat = 0
    var body: some View {
        VStack(spacing: 10) {
            HStack{
                Circle().frame(width: 35, height: 35)
                Text("Swiftful Thinking")
                Spacer()
                Image(systemName: "ellipsis")
                
            }
            .padding(.horizontal)
            Rectangle()
            .frame(height: 300)
            .scaleEffect(1 + currentAmount)
            .gesture(
            MagnificationGesture()
                .onChanged{ value in
                    currentAmount = value - 1
                   
                }
            )
            HStack{
                Image(systemName: "heart.fill")
                Image(systemName: "text.bubble.fill")
                Spacer()
            }
            .padding(.horizontal)
            .font(.headline)
            Text("This is the caption for my photo!")
                .frame(maxWidth: .infinity, alignment: .leading)
            
        }
    }
}

struct MagnificationGestureBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        MagnificationGestureBootcamp()
    }
}
