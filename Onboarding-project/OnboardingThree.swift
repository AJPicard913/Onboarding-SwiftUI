//
//  OnboardingThree.swift
//  Onboarding-project
//
//  Created by AJ Picard on 6/1/20.
//  Copyright © 2020 AJ Picard. All rights reserved.
//

import SwiftUI

struct OnboardingThree: View {
    var body: some View {
        VStack {
            VStack {
                Image("IllustrationThree")
                    
                
                Text("Access Anytime")
                    .font(.system(size: 25, weight: .bold, design: .rounded))
                    .padding(.bottom, 20)
                Text("Paste your content at any time, navigate to the Shortcuts keyboard and tap a Shortcut that you want to paste.")
                    .font(.system(size: 17, weight: .medium, design: .rounded))
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 20)
                    .padding(.bottom, 40)
            }
        }
    }
}

struct OnboardingThree_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingThree()
    }
}
