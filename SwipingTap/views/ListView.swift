//
//  ListView.swift
//  SwipingTap
//
//  Created by Mia Yu on 2023/9/20.
//
//

import SwiftUI

struct ListView : View {
    var value : Int
    var body : some View {


        NavigationStack {

            Text ( /*@START_MENU_TOKEN@*/
                   "Hello, World!"
                   /*@END_MENU_TOKEN@*/ ).navigationTitle ( "Title in List" )
                                         .toolbar {
                                             ToolbarItem ( placement : .navigationBarTrailing ) {
                                                 HStack {
                                                     Text ( "value is \( value )" )
                                                     Image ( systemName : "phone.fill" )
                                                 }
                                             }
                                         }
        }
    }
}

struct ListView_Previews : PreviewProvider {
    static var previews : some View {
        ListView ( value : 1)
    }
}
