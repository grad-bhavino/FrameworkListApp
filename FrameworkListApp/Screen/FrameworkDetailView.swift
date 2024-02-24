//
//  FrameworkDetailView.swift
//  FrameworkApp
//
//  Created by Bhavin  Oza on 2/18/24.
//

import SwiftUI


struct FrameworkDetailView: View {
    
    let frmwrk: Framework
    
    @Binding var isShowingDetailView: Bool
    
    @State private var isShowingSafariView = false
    
    var body: some View {
        VStack {
            Spacer()
            
            FrameworkTitleView(framework: frmwrk)
            
            Text(frmwrk.desc)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button {
                isShowingSafariView = true
            } label: {
                //FrameworkButton(title: "Learn More")
                Label("Learn More", systemImage: "book.fill")
            }
            .buttonStyle(.borderedProminent)
            .controlSize(.large)
//            .foregroundColor(.yellow)
//            .buttonBorderShape(.capsule)
//            .buttonBorderShape(.roundedRectangle(radius: 10))
            .tint(.red)
        }
        .sheet(isPresented: $isShowingSafariView, content: {
             SafariView(url: URL(string: frmwrk.url) ?? URL(string: "www.apple.com")!)
         })
//        .fullScreenCover(isPresented: $isShowingSafariView, content: {
//             SafariView(url: URL(string: frmwrk.url) ?? URL(string: "www.apple.com")!)
//         })
    }
}
