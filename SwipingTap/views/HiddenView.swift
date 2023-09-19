//
//  HiddenView.swift
//  SwipingTap
//
//  Created by Mia Yu on 2023/9/19.
//
//

import SwiftUI

struct HiddenView : View {

//    @Binding var showHidden : Bool

    var body : some View {
        VStack {
            Button ( "back to main" ) {

//                showHidden = false

            }

            Text ( /*@START_MENU_TOKEN@*/
                   "Hello, World!"
                   /*@END_MENU_TOKEN@*/ )
        }.background(Color.gray)
    }
}

struct HiddenView_Previews : PreviewProvider {
    static var previews : some View {
        HiddenView(/*showHidden: .constant(true)*/)
    }
}
