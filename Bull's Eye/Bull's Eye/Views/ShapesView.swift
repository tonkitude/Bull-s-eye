//
//  ShapesView.swift
//  Bull's Eye
//
//  Created by Yashika Tonk on 01/11/22.
//

import SwiftUI

struct ShapesView: View {
    @State private var wideShapes = true
    var body: some View {
        VStack{
            if(!wideShapes)
            {
                Circle()
                    //.fill(Color.blue)
                    .strokeBorder(Color.blue, lineWidth: 20.0)
                    .frame(width: 200.0, height: 100.0)
                    .transition(.scale)
            }
            RoundedRectangle(cornerRadius: 20.0)
                .fill(Color.blue)
                .frame(width: wideShapes ? 200 : 100, height: 100.0)
                //.animation(.easeInOut)
            Capsule()
                .fill(Color.blue)
                .frame(width: wideShapes ? 200 : 100, height: 100.0)
            Ellipse()
                .fill(Color.blue)
                .frame(width: wideShapes ? 200 : 100, height: 100.0)
            Button("Animation")
            {
                withAnimation {
                    //wideShapes = !wideShapes
                    wideShapes.toggle()
                }
            }
        }
        .background(Color.green)
    }
}

struct ShapesView_Previews: PreviewProvider {
    static var previews: some View {
        ShapesView()
    }
}
