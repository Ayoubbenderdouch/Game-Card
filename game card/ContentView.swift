//
//  SwiftUIView.swift
//  game card
//
//  Created by Ayoub Benderdouch on 22/11/2024.
//

import SwiftUI

struct ContentView: View {
    
  @State var playerCard = "card7"
  @State var cpuCard = "card13"

  @State var playerScore = 0
  @State var cpuScore = 0


  var body: some View {

      ZStack{

        Image("background-plain")
          .resizable()
          .ignoresSafeArea()

        VStack{
          Spacer()
          Image("logo")
Spacer()
          HStack{
            Spacer()
            Image(playerCard)
Spacer()
            Image(cpuCard)
            Spacer()
          }
          Spacer()


          Button {
            deal()
          } label: {
            Image("button")
          }


          Spacer()

          HStack{
            Spacer()
            VStack{
              Text("Player")
                .font(.headline)
                .foregroundStyle(.white)
              Text(String(playerScore))
                .font(.title)
                .foregroundStyle(.white)
            }
            Spacer()
            VStack{
              Text("CPU")
                .font(.headline)
                .foregroundStyle(.white)

              Text(String(cpuScore))
                .font(.title)
                .foregroundStyle(.white)
            }
            Spacer()

          }
          Spacer()



        }




      }
    }

  func deal() {
//    Randomaize the players card
    var playerCardValue = Int.random(in: 2...14)
    playerCard = "card" + String(playerCardValue)
//    Randomize the cpus card
    var cpuCardValue = Int.random(in: 2...14)
    cpuCard = "card" + String(cpuCardValue)
//    upadte the score
    if playerCardValue > cpuCardValue {


      playerScore += 1
    }
    else if cpuCardValue > playerCardValue {

//
      cpuScore += 1
    }

  }
}

#Preview {
    ContentView()
}

