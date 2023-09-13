//
//  CenterView.swift
//  SwipingTap
//
//  Created by Mia Yu on 2023/9/13.
//

import SwiftUI

struct CenterView: View {
    @Binding var index:Int
    var body: some View {
        
        VStack{
            Button("to <"){
                index = 0
            }
            Text("Hello, Central!")
            Button("to >"){
                index = 2
            }
        }
        
    }
}

struct CenterView_Previews: PreviewProvider {
    static var previews: some View {
        CenterView(index: .constant(1))
    }
}
