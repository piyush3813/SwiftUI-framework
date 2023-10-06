//
//  AF_Button.swift
//  SwiftUI-framework
//
//  Created by XP India  on 06/10/23.
//

import SwiftUI

struct AF_Button: View {
    var body: some View {
        
        Text("Learn more")
            .font(.title2)
            .frame(width: 280, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .background(.pink)
            .foregroundStyle(.white)
            .clipShape(
                RoundedRectangle(cornerRadius: 10)
            )
        
    }
}

#Preview {
    AF_Button()
}
 
