//
//  LeftView.swift
//  SwipingTap
//
//  Created by Mia Yu on 2023/9/13.
//

import SwiftUI

struct LeftView : View {

    @Binding var index : Int

    var body : some View {

        VStack {

            Text ( "Hello, Lefty!" )

            Button ( "back to Center" ) {

                index = 1

            }
        }.background ( Color.yellow )
    }
}

struct LeftView_Previews : PreviewProvider {

    static var previews : some View {

        LeftView ( index : .constant ( 0 ) )

    }
}
