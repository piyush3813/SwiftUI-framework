//
//  XdismissButton.swift
//  SwiftUI-framework
//
//  Created by XP India  on 06/10/23.
//

import SwiftUI

struct XdismissButton: View {
    @Binding var isShowdetailView : Bool
    var body: some View {
        
        
        HStack {
            Spacer()
            Button{
                isShowdetailView = false
            }label:{
                Image(systemName: "xmark")
                    .foregroundStyle(Color(.label))
                    .imageScale(.large)
                    .frame(width: 44, height: 44, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            }
        }.padding()
    }
 
}

#Preview {
    XdismissButton(isShowdetailView: .constant(false))
}
