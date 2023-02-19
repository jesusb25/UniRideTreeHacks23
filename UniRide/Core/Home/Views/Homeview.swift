//
//  Homeview.swift
//  UniRide
//
//  Created by Jesus Ballesteros on 2/18/23.
//

import SwiftUI

struct Homeview: View {
    @State private var showLocationSearchView = false
    var body: some View {
        ZStack (alignment: .top) {

            UberMapViewRepresentable()
                .ignoresSafeArea()
                .padding(.bottom)

            if showLocationSearchView {
                LocationSearchView()
            } else {
                LocationSearchActivationView()
                    .padding(.top, 72)
                    .onTapGesture {
                        showLocationSearchView.toggle()
                    }
            }

            MapViewAction_Button()
                .padding(.leading)
                .padding(.top, 4)

        }
    }
}


struct Homeview_Previews: PreviewProvider {
    static var previews: some View {
        Homeview()
    }
}
