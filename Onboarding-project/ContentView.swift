//
//  ContentView.swift
//  Onboarding-project
//
//  Created by AJ Picard on 6/1/20.
//  Copyright © 2020 AJ Picard. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var SlideGesture = CGSize.zero
    @State var SlideOne = false
    @State var SlideOnePrevious = false
    @State var SlideTwo = false
    @State var SlideTwoPrevious = false
    
    
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)).edgesIgnoringSafeArea(.all)
            
            OnboardingThree()
                .offset(x: SlideGesture.width)
                .offset(x: SlideTwo ? 0 : 500)
                .animation(.spring())
            
                .gesture(
                    DragGesture().onChanged { value in
                        self.SlideGesture = value.translation
                    }
                    .onEnded { value in
                        if self.SlideGesture.width > 150 {
                            self.SlideTwo = false
                            self.SlideTwoPrevious = true
                        }
                        self.SlideGesture = .zero
                    }
            )
            
            
            
            OnboardingTwo()
                .offset(x: SlideGesture.width)
                .offset(x: SlideOne ? 0 : 500)
                .offset(x: SlideOnePrevious ? 500 : 0)
                .offset(x: SlideTwo ? -500 : 0)
                .animation(.spring())
                
                .gesture(
                    DragGesture().onChanged { value in
                        self.SlideGesture = value.translation
                    }
                    .onEnded { value in
                        if self.SlideGesture.width < -150 {
                            self.SlideOne = true
                            self.SlideTwo = true
                           
                        }
                        
                        if self.SlideGesture.width > 150 {
                            self.SlideOnePrevious = true
                            self.SlideOne = false
                            
                        }
                        self.SlideGesture = .zero
                    }
            )
            
                
            OnboardingOne()
                .offset(x: SlideGesture.width)
                .offset(x: SlideOne ? -500 : 0)
                
                .animation(.spring())
                
                .gesture(
                    DragGesture().onChanged { value in
                        self.SlideGesture = value.translation
                    }
                    .onEnded { value in
                        if self.SlideGesture.width < -150 {
                            self.SlideOne = true
                            self.SlideOnePrevious = false
                        }
                        self.SlideGesture = .zero
                    }
            )
            
            
            VStack {
                Spacer()
                ZStack {
                    VStack {
                        Text("Complete")
                            .font(.system(size: 17, weight: .medium, design: .rounded))
                            .foregroundColor(Color.white)
                    }
                    .frame(width: 140, height: 40)
                    .background(Color.green)
                    .cornerRadius(20)
                    .animation(.spring())
                    .offset(x: SlideTwo ? 0 : 500)
                    
                    VStack {
                        Text("Skip")
                            .font(.system(size: 17, weight: .medium, design: .rounded))
                            .foregroundColor(Color.white)
                    }
                    .frame(width: 140, height: 40)
                    .background(Color.black)
                    .cornerRadius(20)
                    .animation(.spring())
                    .offset(x: SlideTwo ? -500 : 0)
                    
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


// States

// @State var SlideOne = false
// @State var SlideOnePrev = false
// @State var SlideTwo = false
// @State var SlideTwoPrev = false
//
// @State var SlideGesture = CGSize.zero




//  Onboarding Three Animation
//
//  .offset(x: SlideGesture.width)
//            .offset(x: SlideTwo ? 0 : 500)
//            .animation(.spring())
//
//            .gesture(
//                DragGesture().onChanged { value in
//                    self.SlideGesture = value.translation
//                }
//                .onEnded { value in
//
//                    if self.SlideGesture.width > 150 {
//                        self.SlideTwoPrev = true
//                        self.SlideTwo = false
//
//                    }
//                    self.SlideGesture = .zero
//                }
//        )


//  Onboarding Two Animation

//      .offset(x: SlideGesture.width)
//              .offset(x: SlideOne ? 0 : 500)
//              .offset(x: SlideOnePrev ? 500 : 0)
//              .offset(x: SlideTwo ? -500 : 0)
//              .animation(.spring())
//              .gesture(
//                  DragGesture().onChanged { value in
//                      self.SlideGesture = value.translation
//                  }
//                  .onEnded { value in
//                      if self.SlideGesture.width < -150 {
//                          self.SlideOne = true
//                          self.SlideTwo = true
//                      }
//
//                      if self.SlideGesture.width > 150 {
//                          self.SlideOnePrev = true
//                          self.SlideOne = false
//
//                      }
//                      self.SlideGesture = .zero
//                  }
//          )







//  Onboarding One Animation
//
//  .offset(x: SlideGesture.width)
//     .offset(x: SlideOne ? -500 : 0)
//     .animation(.spring())
//
//     .gesture(
//         DragGesture().onChanged { value in
//             self.SlideGesture = value.translation
//         }
//         .onEnded { value in
//             if self.SlideGesture.width < -150 {
//                 self.SlideOne = true
//                 self.SlideOnePrev = false
//             }
//
//             self.SlideGesture = .zero
//         }
// )


// Skip & Complete button

// VStack {
//        Spacer()
//        ZStack {
//            VStack {
//                Text("Complete")
//                    .font(.system(size: 17, weight: .medium, design: .rounded))
//                    .foregroundColor(.white)
//            }
//            .frame(width: 120, height: 40)
//            .background(Color.green)
//            .offset(x: SlideTwo ? 0 : 500)
//            .animation(.spring())
//
//            .cornerRadius(60)
//            .animation(.spring())
//            .padding(.bottom, 20)
//
//            VStack {
//                Text("Skip")
//                    .font(.system(size: 17, weight: .medium, design: .rounded))
//                    .foregroundColor(.white)
//            }
//            .frame(width: 120, height: 40)
//            .background(Color.black)
//            .offset(x: SlideTwo ? -500 : 0)
//            .animation(.spring())
//
//            .cornerRadius(60)
//            .animation(.spring())
//            .padding(.bottom, 20)
//        }
//    }
