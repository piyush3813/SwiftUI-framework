//
//  frameworkModel.swift
//  SwiftUI-framework
//
//  Created by XP India  on 06/10/23.
//

import SwiftUI
import Foundation

final class frameworkModel: ObservableObject {
    
    var framework: Framework?{
        didSet{
            isShowingdetailView = true
        }
    }
    
    @Published var isShowingdetailView = false
    
    let columns:[GridItem] = [GridItem(.flexible()),
                              GridItem(.flexible()),
                              GridItem(.flexible())]
}
