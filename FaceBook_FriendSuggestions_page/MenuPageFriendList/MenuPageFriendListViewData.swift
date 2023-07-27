//
//  PeopleYouMayKnowData.swift
//  FacebookUI
//
//  Created by Syed Raza on 7/10/23.
//
import Foundation

/// Data displayed for one individual friend on the friends page.
struct MenuPageFriendListViewData: Identifiable {
    let id = UUID()
    let name: String
    let firstName: String
    let lastName: String
    let numMutualFriends: Int
    var follow: Bool
    /// Will be used to get asset image for now, until we need something different at a later point.
    let profilePicturePath: String
    
  
    static let mockData: [MenuPageFriendListViewData] = [
        MenuPageFriendListViewData(name: "Elijah Erten", firstName: "Elijah", lastName: "Erten",  numMutualFriends: 2, follow: true,
                               profilePicturePath: "FriendPage_Elijah"),
                             
        MenuPageFriendListViewData(name: "Elise Diep", firstName: "Elise", lastName: "Diep", numMutualFriends: 7, follow: true,
                               profilePicturePath: "FriendPage_Elise"),
        MenuPageFriendListViewData(name: "Juan Taylor", firstName: "Juan", lastName: "Taylor", numMutualFriends: 10, follow: true,
                               profilePicturePath: "FriendPage_JuanTaylor"),
        MenuPageFriendListViewData(name: "Amber Farrell", firstName: "Amber", lastName: "Farrell", numMutualFriends: 23, follow: false,
                               profilePicturePath: "FriendPage_AmberFarrell"),
        MenuPageFriendListViewData(name: "Brenda Tran", firstName: "Brenda", lastName: "Tran",  numMutualFriends: 21, follow: true,
                               profilePicturePath: "FriendPage_BrendaTran"),
        MenuPageFriendListViewData(name: "Briony Lynn", firstName: "Briony", lastName: "Lynn", numMutualFriends: 21, follow: true,
                               profilePicturePath: "FriendPage_BrionyLynn"),
        MenuPageFriendListViewData(name: "Edwin Higgins", firstName: "Edwin", lastName: "Higgins", numMutualFriends: 30, follow: true,
                               profilePicturePath: "FriendPage_EdwinHiggins"),
        MenuPageFriendListViewData(name: "Elijah Erten", firstName: "Elijah", lastName: "Erten",  numMutualFriends: 2, follow: true,
                               profilePicturePath: "FriendPage_Elijah"),
        MenuPageFriendListViewData(name: "Elise Diep", firstName: "Elise", lastName: "Diep", numMutualFriends: 7, follow: true,
                               profilePicturePath: "FriendPage_Elise"),
        MenuPageFriendListViewData(name: "Juan Taylor", firstName: "Juan", lastName: "Taylor", numMutualFriends: 10, follow: true,
                               profilePicturePath: "FriendPage_JuanTaylor"),
        MenuPageFriendListViewData(name: "Kiran Bruno", firstName: "Kiran", lastName: "Bruno",  numMutualFriends: 15, follow: true,
                               profilePicturePath: "FriendPage_Kiran"),
        MenuPageFriendListViewData(name: "Michelle Manson", firstName: "Michelle", lastName: "Manson", numMutualFriends: 16, follow: false,
                               profilePicturePath: "FriendPage_MichelleManson"),
        MenuPageFriendListViewData(name: "Peter Barut", firstName: "Peter", lastName: "Barut", numMutualFriends: 5, follow: true,
                               profilePicturePath: "FriendPage_Peter")
    ]
}

