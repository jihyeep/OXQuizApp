//
//  ContentView.swift
//  ox-quiz-app
//
//  Created by 박지혜 on 4/15/24.
//

import SwiftUI

struct ContentView: View {
    @State var number1: Int = 4
    @State var number2: Int = 2
    @State var resultNumber: Int = 9
    
    @State var countCorrect: Int = 0
    @State var countWrong: Int = 0
    
    var body: some View {
        // UI 구성 및 로직 작성 부분
        VStack {
            Text("다음 수식은 맞을까요?")
            Spacer()
            Text("\(number1) X \(number2) = \(resultNumber)")
            Spacer()
            HStack {
                Button {

                } label: {
                    HStack {
                        Image(systemName: "checkmark.diamond.fill")
//                            .resizable()
//                            .frame(width: 40, height: 40)
                        Text("맞음")
                            .bold()
                            
                    }
                    .foregroundStyle(.green)
                }
                .padding(.trailing)
                Button {

                } label: {
                    HStack {
                        Image(systemName: "xmark.diamond")
//                            .resizable()
//                            .frame(width: 40, height: 40)
                        Text("틀림")
                            .bold()
                            
                    }
                    .foregroundStyle(.red)
                }
                .padding(.leading)

            }
            Spacer()
            HStack {
                Text("\(countCorrect)개 맞춤")
                Text("\(countWrong)개 틀림")
            }
            Spacer()
            Button {
                countCorrect = 0
                countWrong = 0
            } label: {
                Text("카운트 초기화")
            }
            
        }
        .font(.largeTitle)
        .padding()
        
    }
}

#Preview {
    ContentView()
}
