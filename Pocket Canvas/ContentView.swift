//
//  ContentView.swift
//  Pocket Canvas
//
//  Created by Priyanshu Gupta on 11/07/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        DrawingCanvasView().ignoresSafeArea([.all])
    }
}

#Preview {
    ContentView()
}
