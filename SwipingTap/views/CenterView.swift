//
//  CenterView.swift
//  SwipingTap
//
//  Created by Mia Yu on 2023/9/13.
//

import SwiftUI

struct CenterView : View {

    @Binding var index : Int

//    @Binding var showHidden : Bool

    var body : some View {

        VStack {

            Button ( "to <" ) {

                index = 0

            }

            Text ( "Hello, Central!" )

            /*NavigationView{
                NavigationLink(destination: HiddenView(showHidden: $showHidden)){
                    Text("to seek")
                }.navigationBarHidden(true)
                 .navigationBarTitleDisplayMode(.automatic)
            }*/

            /*Button("seek!"){
                currentView = "Hidden"
            }*/

            Button ( "to >" ) {

                index = 2

            }
        }.background ( Color.white )
    }
}

struct CenterView_Previews : PreviewProvider {

    static var previews : some View {

        CenterView ( index : .constant ( 1 )/*, showHidden: .constant(false)*/)

    }
}
