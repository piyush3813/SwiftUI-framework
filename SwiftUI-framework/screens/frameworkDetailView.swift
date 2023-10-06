//
//  frameworkDetailView.swift
//  SwiftUI-framework
//
//  Created by XP India  on 06/10/23.
//

import SwiftUI

struct frameworkDetailView: View {
    var framework: Framework
    @Binding var isShowingdetailView:Bool
    @State private var isShowingSafariView = false
    var body: some View {
        VStack{
            XdismissButton(isShowdetailView: $isShowingdetailView)
            Spacer()
            FrameworkTitleView(framework: framework)
            
            Text(framework.description)
                .font(.body)
                .padding()
            
            
            Spacer()
            
            Button(action: {
                isShowingSafariView = true
            }, label:{
                AF_Button()
            })
            
        }.sheet(isPresented: $isShowingSafariView, content: {
            SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
                .ignoresSafeArea()
            
        })
    }
}

#Preview {
    frameworkDetailView(framework: MockData.sampleFramework, isShowingdetailView: .constant(false))
}


