//
//  HitButtonView.swift
//  Bull's Eye
//
//  Created by Yashika Tonk on 01/11/22.
//

import SwiftUI

struct HitButtonView: View {
    @Binding var alertIsVisible : Bool
    @Binding var game : Game
    var slidervalue : Double
    var body: some View {
        Button()
        {
            print("hello")
            withAnimation{
                alertIsVisible = true
            }
            //game.startNewRound(points: game.points(sliderValue: Int(slidervalue)))
        }
    label:
        {
            Text("Hit Me".uppercased())
                .bold()
                .font(.title3)
        }
            .padding(20.0)
            .background(ZStack {
                Color("ButtonColor")
                LinearGradient(gradient: Gradient(colors: [Color.white.opacity(0.4), Color.clear]), startPoint: .top, endPoint: .bottom)
            })
            .foregroundColor(.white)
            .cornerRadius(Constants.General.roundRectCornerRandius)
            .overlay(
                RoundedRectangle(cornerRadius: Constants.General.roundRectCornerRandius)
                    .strokeBorder(Color.white, lineWidth: Constants.General.strokeWidth)
            )
            
    }
}

    struct HitButtonView_Previews: PreviewProvider {
        static private var alertIsVisible = Binding.constant(false)
        static private var game = Binding.constant(Game())
        static var previews: some View {
            HitButtonView(alertIsVisible: alertIsVisible, game: game, slidervalue: 12.0)
        }

    }
