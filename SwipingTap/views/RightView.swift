//
//  RightView.swift
//  SwipingTap
//
//  Created by Mia Yu on 2023/9/13.
//

import SwiftUI

struct RightView : View {

    @Binding var index : Int

    var body : some View {

        VStack {

            Text ( "Hello, Righty!" )

            Button ( "back to Center" ) {

                index = 1

            }.foregroundColor ( Color.white )
        }.background ( Color.blue )
    }
}

struct RightView_Previews : PreviewProvider {

    static var previews : some View {

        RightView ( index : .constant ( 2 ) )

    }
}
