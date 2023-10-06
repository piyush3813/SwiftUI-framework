//
//  FrameworkGridView.swift
//  SwiftUI-framework
//
//  Created by XP India  on 06/10/23.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewmodel = frameworkModel()
    
    
    var body: some View {
        NavigationView {
            ScrollView{
                LazyVGrid(columns: viewmodel.columns) {
                    ForEach(MockData.frameworks) { framework in
                        FrameworkTitleView(framework: framework)
                            .onTapGesture {
                                viewmodel.framework = framework
                            }
                    }
                }
            }.navigationTitle("Apple Frameworks")
                .sheet(isPresented: $viewmodel.isShowingdetailView) {
                    frameworkDetailView(framework: viewmodel.framework ?? MockData.sampleFramework, isShowingdetailView:  $viewmodel.isShowingdetailView)
                }
        }
    }
}

#Preview {
    FrameworkGridView()
}

struct FrameworkTitleView: View {
    
    
    let framework : Framework
    
    var body: some View {
        VStack{
            Image(framework.imageName)
                .resizable()
                .frame(width: 90, height: 90,alignment: .center)
            
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }.padding()
    }
}
