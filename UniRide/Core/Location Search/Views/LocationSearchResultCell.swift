//
//  LocationSearchResultCell.swift
//  UniRide
//
//  Created by Jesus Ballesteros on 2/18/23.
//

import SwiftUI

struct LocationSearchResultCell: View {
    var body: some View {
        HStack {
            Image(systemName: "car.circle.fill")
                .resizable()
                .foregroundColor(.blue)
                .accentColor(.white)
                .frame(width: 40, height:40)
            
            VStack(alignment: .leading, spacing: 4) {
                Text("Starbucks Coffee")
                    .font(.body)
                
                Text("123 Main St, Cupertino CA")
                    .font(.system(size: 15))
                    .foregroundColor(.gray)
                
                Divider()
                
                
            }
            .padding(.leading, 8)
            .padding(.vertical, 8)
        }
        .padding(.leading)
    }
}

struct LocationSearchResultCell_Previews: PreviewProvider {
    static var previews: some View {
        LocationSearchResultCell()
    }
}
