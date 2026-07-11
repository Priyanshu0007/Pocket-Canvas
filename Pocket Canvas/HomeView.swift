//
//  HomeView.swift
//  Pocket Canvas
//
//  Created by Priyanshu Gupta on 11/07/26.
//

import SwiftUI

struct HomeView: View{
    var body: some View{
        NavigationStack{
            NavigationLink(destination: ContentView()) {
                Text("Start Sketching")
                    .font(.headline)
                    .foregroundStyle(.blue)
                    .padding()
                    .background(Color.yellow)
                    .border(.black, width: 4)
            }.navigationTitle("Pocket Canvas")
        }
    }
}

#Preview {
    HomeView()
}
