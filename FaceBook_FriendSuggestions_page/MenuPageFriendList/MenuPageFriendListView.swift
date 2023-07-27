//
//  PeopleYouMayKnowData.swift
//  FacebookUI
//
//  Created by Syed Raza on 7/10/23.
//

import SwiftUI

struct MenuPageFriendListView: View {
    var peopleData: MenuPageFriendListViewData

    var body: some View {
        VStack {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 10) {
                    ForEach(MenuPageFriendListViewData.mockData) { person in
                        VStack {
                            Image(person.profilePicturePath)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .clipShape(Circle())
                                .frame(width: 100, height: 100)
                                .padding(8)

                            VStack(alignment: .leading, spacing: 4) {
                                Text("\(person.firstName) \(person.lastName)")
                                    .font(.headline)

                                Text("\(person.numMutualFriends) Mutual Friends")
                                    .font(.subheadline)
                            }
                        }
                        .padding(10)
                    }
                }
            }
        }
    }
}


struct MenuPageFriendListView_Previews: PreviewProvider {
    static var previews: some View {
        MenuPageFriendListView(peopleData: MenuPageFriendListViewData.mockData[0])
    }
}

