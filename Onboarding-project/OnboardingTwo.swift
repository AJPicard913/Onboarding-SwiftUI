//
//  OnboardingTwo.swift
//  Onboarding-project
//
//  Created by AJ Picard on 6/1/20.
//  Copyright © 2020 AJ Picard. All rights reserved.
//

import SwiftUI

struct OnboardingTwo: View {
    var body: some View {
        VStack {
            VStack {
                Image("IllustrationTwo")
                    .padding(.bottom, 30)
                
                Text("Create Shortcuts")
                    .font(.system(size: 25, weight: .bold, design: .rounded))
                    .padding(.bottom, 20)
                    .padding(.top, 40)
                Text("Assign a photo, link, document or even text snippet to a shortcut you create. Access the shorcuts you create on the Pasted keyboard at anytime.")
                    .font(.system(size: 17, weight: .medium, design: .rounded))
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 20)
            }
        }
    }
}

struct OnboardingTwo_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingTwo()
    }
}
