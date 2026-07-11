//
//  DrawingCanvasView.swift.swift
//  Pocket Canvas
//
//  Created by Priyanshu Gupta on 11/07/26.
//

import Foundation
import SwiftUI
import PencilKit

struct DrawingCanvasView: UIViewRepresentable {
    func makeUIView(context: Context) -> PKCanvasView {
        let canvasView = PKCanvasView()
        canvasView.drawingPolicy = .anyInput
        
        let toolPicker = PKToolPicker()
        toolPicker.setVisible(true, forFirstResponder: canvasView)
        toolPicker.addObserver(canvasView)
        
        canvasView.becomeFirstResponder()
        return canvasView
    }
    
    func updateUIView(_ uiView: PKCanvasView, context: Context) {
        // uiView is now explicitly recognized as a PKCanvasView
    }
}
