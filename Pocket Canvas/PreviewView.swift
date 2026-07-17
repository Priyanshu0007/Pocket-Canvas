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
    
    var uiImage: UIImage {
        drawing.image(from: drawing.bounds, scale: 1.0)
    }
    var imageToShare: Image {
        Image(uiImage: uiImage)
    }
    
    var body: some View {
        VStack{
            Image(uiImage: uiImage)
                .resizable()
                .scaledToFit()
                .padding()
                .navigationTitle("Your ArtWork")
            ShareLink(item: imageToShare, preview: SharePreview("MY ArtWork", image: imageToShare)){
                Text("Share Sketch")
                    .font(.title3)
                    .bold()
                    .foregroundStyle(.black)
                    .padding()
                    .background(Color.cyan)
                    .border(Color.black, width:4)
            }
            
        }
    }
}

