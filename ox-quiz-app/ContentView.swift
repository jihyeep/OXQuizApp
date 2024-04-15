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
                    selectCorrect()
                    reloadGame()
                } label: {
                    HStack {
                        Image(systemName: "checkmark.diamond.fill")
                        Text("맞음")
                            .bold()
                        
                    }
                    .foregroundStyle(.green)
                }
                .padding(.trailing)
                Button {
                    selectWrong()
                    reloadGame()
                } label: {
                    HStack {
                        Image(systemName: "xmark.diamond")
                        Text("틀림")
                            .bold()
                        
                    }
                    .foregroundStyle(.red)
                }
                .padding(.leading)
                
            }
            Spacer()
            HStack {
                Spacer()
                Text("\(countCorrect)개 맞춤")
                Spacer()
                Text("\(countWrong)개 틀림")
                Spacer()
            }
            Spacer()
            Button("카운트 초기화") {
                countCorrect = 0
                countWrong = 0
                reloadGame()
            }
        }
        .font(.largeTitle)
        .padding()
        .onAppear {
            reloadGame()
        }
    }
        
    // 게임 시작 로직
    func reloadGame() {
        print("새로운 게임이 시작되었습니다.")
        number1 = Int.random(in: 1..<10)
        number2 = Int.random(in: 1..<10)
        
        if Bool.random() {
            // 50% 실행 - 정상 결과
            resultNumber = number1 * number2
        } else {
            // 50% 실행 - 잘못된 결과
            // 정상 결과가 나올 경우 잘못된 결과가 나오도록 반복
            repeat {
                resultNumber = Int.random(in: 1..<100)
            } while resultNumber == (number1 * number2)
        }
        
    }
    
    // 정답 선택 시 로직
    func selectCorrect() {
        if resultNumber == number1 * number2 {
            countCorrect += 1
        } else {
            countWrong += 1
        }
    }
    
    // 오답 선택 시 로직
    func selectWrong() {
        if resultNumber == number1 * number2 {
            countWrong += 1
        } else {
            countCorrect += 1
        }
    }
}


#Preview {
    ContentView()
}
