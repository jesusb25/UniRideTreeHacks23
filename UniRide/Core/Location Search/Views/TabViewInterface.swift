//
//  TabViewInterface.swift
//  UniRide
//
//  Created by Jesus Ballesteros on 2/19/23.
//

import SwiftUI


//struct UniRide

struct RewardsView: View {
    @State private var punches = 7 // number of completed trips
    let totalPunches = 10 // total number of trips
    
    // Friend list data
    let friends = ["John", "Sarah", "Mike", "Linda", "Chris"]
    
    var body: some View {
        VStack {
            Text("Rewards") // title for the rewards view
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.top, 30)
            
            HStack {
                ForEach(0..<punches) { _ in
                    Image(systemName: "car.fill") // car emoji for completed trip
                }
                ForEach(punches..<totalPunches) { _ in
                    Image(systemName: "car") // car emoji for incomplete trip
                }
            }
            .font(.system(size: 20))
            .padding(.vertical, 20)
            
            ProgressView(value: Double(punches), total: Double(totalPunches)) // progress bar
                .padding(.horizontal, 30) // add padding for progress bar
            
            Text("Share \(10 - punches) more UniRides\nto  earn a free ride.") // add text with call to action
                .font(.title2)
                .fontWeight(.semibold)
                .multilineTextAlignment(.center)
                .padding()
            
            // Friend list
            Text("Friends also using UniRides:")
                .fontWeight(.bold)
                .font(.system(size: 25))
                .padding(.top, 20)
            
            ForEach(friends, id: \.self) { friend in
                HStack {
                    Image(systemName: "person.fill")
                        .foregroundColor(.blue)
                    Text(friend)
                    Spacer()
                    Image(systemName: "checkmark.circle.fill")
                        .foregroundColor(.green)
                }
                .padding(.vertical, 10)
                .padding(.horizontal, 20)

            }
            
            Spacer() // push items to the top
            
            Button(action: {
                // action to perform when ride now button is tapped
            }) {
                Text("Ride Now") // ride now button
                    .font(.title.bold())
                    .foregroundColor(.white)
            }
            .frame(maxWidth: .infinity, maxHeight: 80)
            .background(Color.black)
            .cornerRadius(25)
            .padding(.horizontal, 80) // add vertical padding to the button
            .padding(.bottom, 50) // add padding to the bottom
        }
        .padding(.bottom, 20) // add bottom padding to the VStack
    }
}

struct LeaderboardView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 20) {
            Text("UniRide") // title for the rewards view
                .font(.system(size: 50, weight: .bold, design: .default))
                .fontWeight(.bold)
                .padding(.top, 30)
            
            Text("Monthly Leaderboard")
                .font(.system(size: 24, weight: .bold, design: .default))
                .foregroundColor(Color(red: 204/255, green: 85/255, blue: 0/255))

            
            LeaderboardRow(number: 1, name: "John", rides: 20)
            LeaderboardRow(number: 2, name: "Jane", rides: 18)
            LeaderboardRow(number: 3, name: "Bob", rides: 16)
            
            Text("Only 5 more rides to catch up to 3rd place!")
                .font(.headline)
                .fontWeight(.medium)
                .foregroundColor(Color(red: 204/255, green: 85/255, blue: 0/255))
                .multilineTextAlignment(.center)

                        
            Text("Sarah was your top friend this month!")
                .font(.subheadline)
                .padding(.horizontal, 20)
                .padding(.top, 50)
                .foregroundColor(.black)
            
            Button(action: {
                // Action when button is tapped
            }, label: {
                Text("Share a ride")
                    .frame(maxWidth: 200, maxHeight: 80)
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                    .padding(.vertical, 10)
                    .padding(.horizontal, 20)
                    .background(Color.green)
                    .cornerRadius(10)

            })
            .padding(.top, 20)
            
            Spacer()
        }
        .padding()
    }
}

struct LeaderboardRow: View {
    var number: Int
    var name: String
    var rides: Int
    
    var body: some View {
        HStack(spacing: 10) {
            VStack(alignment: .leading) {
                HStack(spacing: 10) {
                    Text("\(number)")
                        .font(.headline)
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                    
                    Image(systemName: "person.crop.circle.fill")
                        .font(.headline)
                        .foregroundColor(.black)
                        .frame(width: 20, height: 20)
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(10)
                    
                    Text(name)
                        .font(.headline)
                        .foregroundColor(.black)
                    
                    
                    
                    HStack(spacing: 10) {
                        Text("\(rides) rides")
                            .font(.headline)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding(.vertical, 5)
                            .padding(.horizontal, 10)
                            .background(Color.green)
                            .cornerRadius(10)
                    }
                }
                
                
            }
            
            
        }
        .padding(.vertical, 10)
    }
}


struct TabViewInterface: View {
    var body: some View {
        TabView {
            
            Homeview()
                .tabItem {
                    Image(systemName: "car")
                    Text("UniRide")
                }
            
            RewardsView()
                .tabItem {
                    Image(systemName: "star")
                    Text("Rewards")
                }
            LeaderboardView()
                .tabItem {
                    Image(systemName: "person.crop.circle.fill")
                    Text("Leaderboards")
                }
        }
        
    }
}


struct TabViewInterface_Previews: PreviewProvider {
    static var previews: some View {
        TabViewInterface()
    }
}
