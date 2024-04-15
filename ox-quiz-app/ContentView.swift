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
                .padding()
                .font(.system(size: 30))
//            Spacer()
            Text("\(number1) X \(number2) = \(resultNumber)")
                .font(.system(size: 30))
            HStack {
                Button {
                    
                } label: {
                    Image(systemName: "checkmark.diamond.fill")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .foregroundColor(.green)
                    Text("맞음")
                        .font(.system(size: 40, weight: .bold))
                        .foregroundStyle(Color.green)
                }
                .padding(.trailing)
                Button {
                    
                } label: {
                    Image(systemName: "xmark.diamond")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .foregroundColor(.red)
                    Text("틀림")
                        .font(.system(size: 40, weight: .bold))
                        .foregroundStyle(Color.red)
                }
                .padding(.leading)

            }
            HStack {
                Text("\(countCorrect)개 맞춤")
                Text("\(countWrong)개 틀림")
            }
            .font(.system(size: 30))
            Button {

            } label: {
                Text("카운트 초기화")
                    .font(.system(size: 30))
            }
            
        }
        
        // 게임 시작 로직
//        func reloadGame() {
//
//        }
        
        // 정답 선택 시 로직
//        func selectCorrect() {
//
//        }
        
        // 오답 선택 시 로직
//        func selectWrong() {
//            
//        }
    }
}

#Preview {
    ContentView()
}
