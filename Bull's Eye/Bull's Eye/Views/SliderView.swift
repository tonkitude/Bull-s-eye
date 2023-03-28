//
//  SliderView.swift
//  Bull's Eye
//
//  Created by Yashika Tonk on 01/11/22.
//

import SwiftUI

struct SliderView: View {
    @Binding var value : Double
    var body: some View {
        HStack
        {
            Text("1")
                .bold()
                .foregroundColor(Color("TextColor"))
                .frame(width:35.0)
            Slider(value: $value, in: 1.0...100.0)
            Text("100")
                .bold()
                .foregroundColor(Color("TextColor"))
                .frame(width:35.0)
        }
            .padding()
    }
}

struct SliderView_Previews: PreviewProvider {
    static private var value = Binding.constant(12.0)
    static var previews: some View {
        SliderView( value: value )
            
    }
}

