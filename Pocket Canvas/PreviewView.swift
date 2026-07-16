//
//  PreviewView.swift
//  Pocket Canvas
//
//  Created by Priyanshu Gupta on 16/07/26.
//

import SwiftUI
import PencilKit

struct PreviewView: View {
    let drawing: PKDrawing
    var body: some View {
        Image(uiImage: drawing.image(from: drawing.bounds, scale: 1.0))
            .resizable()
            .scaledToFit()
            .padding()
            .navigationTitle("Your ArtWork")
    }
}

