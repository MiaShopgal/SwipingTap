//
//  CenterView.swift
//  SwipingTap
//
//  Created by Mia Yu on 2023/9/13.
//

import SwiftUI

struct CenterView : View {

    @Binding var index : Tab

    var body : some View {

        VStack {

            Button ( "to <" ) {

                index = .green

            }

            Text ( "Hello, Central!" )

            Button ( "to >" ) {

                index = .red

            }
        }.background ( Color.white )
    }
}

struct CenterView_Previews : PreviewProvider {

    static var previews : some View {

        CenterView ( index : .constant ( .yellow ) )

    }
}
