//
//  FrameworkTitleView.swift
//  FrameworkApp
//
//  Created by Bhavin  Oza on 2/19/24.
//

import SwiftUI

struct FrameworkTitleView: View {
    
    let framework: Framework
    
    var body: some View {
        HStack {
            Image(framework.imgName)
                .resizable()
                .frame(width: 70, height: 70)
            Text(framework.name)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.5)
                .padding()
        }
    }
}

#Preview {
    FrameworkTitleView(framework: MockData.sampleFramework)
}
