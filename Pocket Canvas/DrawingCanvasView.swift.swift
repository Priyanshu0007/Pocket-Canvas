//
//  DrawingCanvasView.swift.swift
//  Pocket Canvas
//
//  Created by Priyanshu Gupta on 11/07/26.
//

import Foundation
import SwiftUI
import PencilKit

struct DrawingCanvasView : UIViewRepresentable {
    func makeUIView(context: Context) -> some UIView {
        let canvasView = PKCanvasView()
        canvasView.drawingPolicy = .anyInput
        return canvasView
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
}
