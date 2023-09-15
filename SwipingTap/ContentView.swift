//
//  ContentView.swift
//  SwipingTap
//
//  Created by Mia Yu on 2023/9/13.
//

import SwiftUI

enum Tab : String, Identifiable, Hashable, CaseIterable {
    case green, yellow, red

    var id : String { rawValue }
}


struct ContentView : View {

    @State var index :                Tab

    // This needs to be set to the first tab.
    @State var selectedTab :          Tab  = .green

    // This can be set to another tab that you actually want to be set initially
    @State var initiallySelectedTab : Tab? = .yellow


    var body : some View {

        ZStack {

            Color.green

            TabView ( selection : $index ) {

                LeftView ( index : $index ).tag ( Tab.green )
//                                           .tabItem { Label ( "dummy label",
//                                                              systemImage : "gearshape.fill" ) }
                CenterView ( index : $index ).tag ( Tab.yellow )
//                                             .tabItem { Label ( "label won't appear",
//                                                                systemImage : "gearshape.fill" ) }
                RightView ( index : $index ).tag ( Tab.red )
//                                            .tabItem { Label ( "since the style is page",
//                                                               systemImage : "gearshape.fill" ) }

            }.tabViewStyle ( .page ( indexDisplayMode : .never ) )
             .onChange ( of : index ) { value in

                 print ( "index is \( value )" )

             }
             .onAppear {
                 if let initiallySelectedTab {

                     self.initiallySelectedTab = nil

                     DispatchQueue.main
                                  .async {
                                      self.selectedTab = initiallySelectedTab
                                  }

                 }
             }
        }
    }
}

struct ContentView_Previews : PreviewProvider {

    static var previews : some View {

        ContentView ( index : .yellow )

    }
}

