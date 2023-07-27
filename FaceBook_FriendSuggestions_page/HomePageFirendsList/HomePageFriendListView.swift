//
//  PeopleYouMayKnowData.swift
//  FacebookUI
//
//  Created by Syed Raza on 7/10/23.
//

import SwiftUI

struct HomePageFriendListView: View {
    var peopleData: HomePageFriendListViewData
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("People You May Know")
                .font(.headline)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 10) {
                    ForEach(PeopleYouMayKnowData.mockData) { person in
                        VStack(alignment: .leading, spacing: 10) {
                            Image(person.profilePicturePath)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 250, height: 250)
                                .padding(8)
                            VStack(alignment: .leading, spacing: 10){
                                Text("\(person.firstName) \(person.lastName)")
                                    .font(.headline)
                                
                                Text("\(person.numMutualFriends) Mutual Friends")
                                    .font(.subheadline)
                                
                                HStack(spacing: 8) {
                                    Button(action: {
                                        // Add Friend button action
                                    }) {
                                        HStack(spacing: 1) {
                                            Image(systemName: "person.fill.badge.plus")
                                                .resizable()
                                                .aspectRatio(contentMode: .fit)
                                                .frame(width: 24, height: 24)
                                                .foregroundColor(.white)
                                            
                                            Text("Add Friend")
                                                .foregroundColor(.white)
                                                .padding(.horizontal, 8)
                                        }
                                        .frame(width: 130, height: 40)
                                        .background(Color.blue)
                                        .cornerRadius(5)
                                    }
                                    
                                    Button(action: {
                                        // Remove button action
                                    }) {
                                        Text("Remove")
                                            .frame(width: 98, height: 40)
                                            .background(
                                                LinearGradient(
                                                    gradient: Gradient(colors: [Color.gray.opacity(0.3), Color.gray.opacity(0.3)]),
                                                    startPoint: .leading,
                                                    endPoint: .trailing
                                                )
                                            )
                                            .foregroundColor(.black)
                                            .cornerRadius(5)
                                    }
                                }
                            }.padding(15)
                        }
                        .padding()
                        .background(Color.white)
                        .cornerRadius(5)
                        .shadow(radius: 2)
                    }
                }
                
            }
        }
    }
}


struct HomePageFriendListView_Previews: PreviewProvider {
    static var previews: some View {
        HomePageFriendListView(peopleData: HomePageFriendListViewData.mockData[0])
    }
}
