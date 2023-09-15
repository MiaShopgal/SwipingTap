//
//  LeftView.swift
//  SwipingTap
//
//  Created by Mia Yu on 2023/9/13.
//

import SwiftUI

struct LeftView : View {

    @Binding var index : Tab

    var body : some View {

        VStack {

            Text ( "Hello, Lefty!" )

            Button ( "back to Center" ) {

                index = .yellow

            }
        }.background ( Color.yellow )
    }
}

struct LeftView_Previews : PreviewProvider {

    static var previews : some View {

        LeftView ( index : .constant(.green) )

    }
}
