//
//  SymbolsView.swift
//  Bull's Eye
//
//  Created by Yashika Tonk on 01/11/22.
//

import SwiftUI

struct SymbolsViewStroked: View {
    var systemName: String
    var body: some View {
        Image(systemName: systemName)
            .font(.title)
            .foregroundColor(Color("TextColor"))
            .frame(width: Constants.General.roundedViewLength, height: Constants.General.roundedViewLength)
            .overlay(
                Circle()
                    .strokeBorder(Color("StrokeColor"), lineWidth: Constants.General.strokeWidth)
            )
    }
}

struct SymbolsViewFilled: View {
    var systemName: String
    var body: some View {
        Image(systemName: systemName)
            .font(.title)
            .foregroundColor(Color("FilledTextColor"))
            .frame(width: Constants.General.roundedViewLength, height: Constants.General.roundedViewLength)
            .background(
                Circle()
                    .fill(Color("FilledColor"))
            )
    }
}

struct PreviewView: View {
    var body: some View {
        VStack(spacing:10){
            SymbolsViewStroked(systemName: "arrow.counterclockwise")
            SymbolsViewFilled(systemName: "list.dash")
        }
    }
}

struct SymbolsView_Previews: PreviewProvider {
    static var previews: some View {
        PreviewView()
        PreviewView()
            .preferredColorScheme(.dark)
    }
}

