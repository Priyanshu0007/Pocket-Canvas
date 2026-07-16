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
    @Binding var drawing: PKDrawing
    
    class Cordinator: NSObject, PKCanvasViewDelegate{
        var parent: DrawingCanvasView
        init(_ parent: DrawingCanvasView) {
            self.parent = parent
        }
        func canvasViewDrawingDidChange(_ canvasView: PKCanvasView) {
            parent.drawing = canvasView.drawing
        }
    }
    
    func makeCoordinator() -> Cordinator {
        Cordinator(self)
    }
    
    func makeUIView(context: Context) -> PKCanvasView {
        let canvasView = PKCanvasView()
        canvasView.drawingPolicy = .anyInput
        
        canvasView.delegate = context.coordinator
        
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
