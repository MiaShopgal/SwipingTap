//
//  CenterView.swift
//  SwipingTap
//
//  Created by Mia Yu on 2023/9/13.
//

import SwiftUI

struct CenterView : View {

    @Binding var index : Int

    @State private var presentedNumbers = [ 1, 4, 8 ]

    @State private var isVisible = false

//    @Binding var showHidden : Bool

    var body : some View {

        VStack {

            Button ( "to <" ) {

                index = 0

            }

            Text ( "Hello, Central!!!" )


            RoundedRectangle ( cornerRadius : 20 ).fill ( .brown )
                                                  .transition ( .opacity )
                                                  .frame ( height : 200 )
                                                  .opacity(isVisible ? 1 : 0)
                                                  .onAppear{
                                                      withAnimation ( .easeInOut(duration: 4).repeatForever() ){
                                                          isVisible.toggle()
                                                      }
                                                  }

            Button ( "in and out" ) {
                withAnimation ( .easeInOut ( duration : 1 ) ) {
                    isVisible.toggle ( )
                }
            }


//                List ( 1 ..< 50 ) { i in
//                    NavigationLink ( value : i ) {
//                        Label ( "Row \( i )",
//                                systemImage : "\( i ).circle" )
//                    }
//                }
            HStack {
                NavigationLink ( value : 1 ) {
                    VStack {
                        Text ( "miao" )
                        Text ( "mia1" )
                    }
                }
                NavigationLink ( value : 2 ) {
                    VStack {
                        Text ( "miao" )
                        Text ( "mia2" )
                    }
                }
            }.navigationDestination ( for : Int.self ) { i in
                 Text ( "Detail \( i )" )
             }
             .navigationTitle ( "" )


            Button ( "to >" ) {

                index = 2

            }
        }.background ( Color.white )
    }
}

struct CenterView_Previews : PreviewProvider {

    static var previews : some View {

        CenterView ( index : .constant ( 1 )
                     /*, showHidden: .constant(false)*/ )

    }
}
