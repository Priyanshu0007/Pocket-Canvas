//
//  ContentView.swift
//  Pocket Canvas
//
//  Created by Priyanshu Gupta on 11/07/26.
//

import SwiftUI
import PencilKit

struct ContentView: View {
    @State private var clearTrigger: Bool = false
    @State private var currentDrawing = PKDrawing()
    
    var body: some View {
        ZStack(alignment: .bottomTrailing){
            DrawingCanvasView(clearTrigger: $clearTrigger, drawing: $currentDrawing).ignoresSafeArea([.all])
            Button(action: {clearTrigger = true}) {
                Image(systemName: "bin.xmark.fill")
                    .font(.headline)
                    .foregroundStyle(.black)
                Text("Clear")
                    .font(.headline)
                    .foregroundStyle(.black)
                    
            }
            .padding()
            .background(Color.red)
            .border(Color.black,width: 4)
            .padding()

        }
    }
}

#Preview {
    ContentView()
}
