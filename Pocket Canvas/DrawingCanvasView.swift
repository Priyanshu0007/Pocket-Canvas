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
    @Binding var clearTrigger: Bool
    
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
        if clearTrigger {
            uiView.drawing = PKDrawing()
            DispatchQueue.main.async {
                clearTrigger = false
            }
        }
    }
}
