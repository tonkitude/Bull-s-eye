//
//  TextView.swift
//  Bull's Eye
//
//  Created by Yashika Tonk on 01/11/22.
//

import SwiftUI

struct InstructionText: View {
    var text: String
    var body: some View {
        Text(text.uppercased())
            .bold()
            .kerning(2.0)
            .multilineTextAlignment(.center)
            .lineSpacing(4.0)
            .font(.footnote)
            .foregroundColor(Color("TextColor"))
    }
}

struct TargetText: View {
    var text: Int
    var body: some View{
        Text(String(text))
            .kerning(-1.0)
            .font(.largeTitle)
            .fontWeight(.black)
            .foregroundColor(Color("TextColor"))
    }
}

struct LabelText:View {
    var text: String
    var body: some View{
        Text(text.uppercased())
            .bold()
            .kerning(1.5)
            .foregroundColor(Color("TextColor"))
            .font(.caption)
    }
}

struct AlertText:View {
    var text: String
    var body: some View{
        Text(text)
            .font(.subheadline)
            .fontWeight(.semibold)
            .multilineTextAlignment(.center)
            .lineSpacing(12.0)
    }
}

struct AlertButtonText:View {
    var text: String
    var body: some View{
        Text(text)
            .bold()
            .frame(maxWidth: .infinity)
            .padding()
            .background(Color.accentColor)
            .foregroundColor(Color.white)
            .cornerRadius(12.0)
    }
}

struct ScoreText:View {
    var score: Int
    var body: some View{
        Text(String(score))
            .font(.title3)
            .bold()
            .kerning(-0.2)
            .foregroundColor(Color("TextColor"))
            .frame(width: Constants.Leaderboard.leaderboardScoreColWidth)
    }
}

struct DateText:View {
    var date: Date
    var body: some View{
            Text(date,  style: .time)
            .font(.title3)
            .bold()
            .kerning(-0.2)
            .foregroundColor(Color("TextColor"))
            .frame(width: Constants.Leaderboard.leaderboardDateColWidth )
    }
}

struct BigBoldText:View{
    let text: String
    var body: some View{
        Text(text.uppercased())
            .kerning(2.0)
            .foregroundColor(Color("TextColor"))
            .font(.title)
            .fontWeight(.black)
    }
}
struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        VStack{
            InstructionText(text:"Instructions")
            TargetText(text:10)
            LabelText(text:"9")
            AlertText(text:"You scored 200 points\n🎉🎉🎉")
            AlertButtonText(text:"Start New Round")
                .padding()
            ScoreText(score: 459)
            DateText(date: Date())
            BigBoldText(text: "Leaderboard")
        }
    }
}

