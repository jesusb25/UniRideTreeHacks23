//
//  Search Activation View.swift
//  UniRide
//
//  Created by Jesus Ballesteros on 2/18/23.
//

import SwiftUI

struct LocationSearchActivationView: View {
    var body: some View {
        HStack {
            Circle()
                .fill(Color.black)
                .frame(width: 10, height: 8)
                .padding(.horizontal)
            
            Text("Where to?")
                .foregroundColor(Color(.darkGray))
            
            Spacer()
               
        }
        .frame(width: UIScreen.main.bounds.width - 45,
               height: 55)
        .background(
            Rectangle()
                .fill(Color.white)
                .shadow(color: .green, radius: 5)
            )
            

        
    }
}

struct LocationSearchActivationViewPreviews: PreviewProvider {
    static var previews: some View {
        LocationSearchActivationView()
    }
}
