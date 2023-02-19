//
//  MapViewAction Button.swift
//  UniRide
//
//  Created by Jesus Ballesteros on 2/18/23.
//

import SwiftUI

struct MapViewAction_Button: View {
    var body: some View {
        Button {
            
        } label: {
            Image(systemName: "line.3.horizontal")
                .font(.title2)
                .foregroundColor(.black)
                .padding()
                .background(.white)
                .clipShape(Circle())
                .shadow(color: .black, radius: 6)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        
        

    }
}

struct MapViewAction_Button_Previews: PreviewProvider {
    static var previews: some View {
        MapViewAction_Button()
    }
}
