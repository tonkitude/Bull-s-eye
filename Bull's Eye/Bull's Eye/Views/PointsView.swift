//
//  PointsView.swift
//  Bull's Eye
//
//  Created by Yashika Tonk on 01/11/22.
//

import SwiftUI

struct PointsView: View {
    @Binding var alertIsVisible : Bool
    @Binding var game : Game
    var slidervalue : Double

    var body: some View {
        VStack(spacing: 10)
        {
            let roundedValue = Int(slidervalue.rounded())
            let points = game.points(sliderValue: roundedValue)
            InstructionText(text: "the slider's value is".uppercased())
            TargetText(text: roundedValue)
            AlertText(text: "You scored  \( String(points) )  Points")
            Button() {
                withAnimation{
                    alertIsVisible = false
                }
                game.startNewRound(points: points)
            }
        label:
            {
                AlertButtonText(text:"Start New Round")
            }
        }
            .padding()
            .frame(maxWidth:300)
            .background(Color("BackgroundColor"))
            .cornerRadius(Constants.General.roundRectCornerRandius)
            .shadow(radius: 10, x: 5, y: 5)
            .transition(.scale)
    }
}

struct PointsView_Previews: PreviewProvider {
    static private var alertIsVisible = Binding.constant(false)
    static private var game = Binding.constant(Game())
    static var previews: some View {
        PointsView(alertIsVisible: alertIsVisible, game: game, slidervalue: 12.0)
            .previewInterfaceOrientation(.portrait)
        PointsView(alertIsVisible: alertIsVisible, game: game, slidervalue: 12.0)
            .previewLayout(.fixed(width: 568, height: 320))
        PointsView(alertIsVisible: alertIsVisible, game: game, slidervalue: 12.0)
            .preferredColorScheme(.dark)
        PointsView(alertIsVisible: alertIsVisible, game: game, slidervalue: 12.0)
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 568, height: 320))
    }
}

