//
//  ContentView.swift
//  Bull's Eye
//
//  Created by Yashika Tonk on 01/11/22.
//

import SwiftUI

struct ContentView: View
{
    
    @State private var alertIsVisible = false
    @State private var sliderValue = 50.0
    @State private var game = Game()
    
    var body: some View
    {
        ZStack {
            BackgroundView(game: $game)
            VStack
            {
                InstructionText(text:"🎯🎯🎯\nPut the bulleseye as close as you can to")
                    .padding(.leading, 30.0)
                    .padding(.trailing, 30.0)
                TargetText(text:game.target)
                    .padding(.bottom, alertIsVisible ? 0 : 100)
                if(alertIsVisible)
                {
                    PointsView(alertIsVisible: $alertIsVisible, game: $game, slidervalue: sliderValue)
                        .transition(.scale)
                }
                else{
                    HitButtonView(alertIsVisible: $alertIsVisible, game: $game, slidervalue: sliderValue)
                        .transition(.scale)
                }
            }
            if(!alertIsVisible){
                SliderView(value:$sliderValue)
                    .transition(.scale)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider
{
    static var previews: some View
    {
        ContentView()
            .previewInterfaceOrientation(.portrait)
        ContentView()
            .previewLayout(.fixed(width: 568, height: 320))
        
        ContentView()
            .preferredColorScheme(.dark)
        ContentView()
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 568, height: 320))
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

