//
//  ContentView.swift
//  SwipingTap
//
//  Created by Mia Yu on 2023/9/13.
//

import SwiftUI


struct ContentView : View {

    @State var index : Int

    var body : some View {

        ZStack {

            Color.green

            TabView ( selection : $index ) {

                LeftView ( index : $index ).tag ( 0 )
                CenterView ( index : $index ).tag ( 1 )
                RightView ( index : $index ).tag ( 2 )

            }.tabViewStyle ( .page ( indexDisplayMode : .never ) )
             .onChange ( of : index ) { value in

                 print ( "index is \( value )" )

             }
        }
    }
}

struct ContentView_Previews : PreviewProvider {

    static var previews : some View {

        ContentView ( index : 1 )
        
    }
}

