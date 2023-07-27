////
////  ContentView.swift
////  FaceBook_FriendSuggestions_page
////
////  Created by Syed Raza on 6/23/23.
////
//


import SwiftUI
//
import SwiftUI

struct Friend: Identifiable {
    let id = UUID()
    let name: String
    let image: String
}
struct FriendDetailView: View {
    let friend: Friend
    
    var body: some View {
        VStack {
            Image(friend.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 200)
            
            Text(friend.name)
                .font(.title)
                .padding()
            
            Text("Suggestions")
                .font(.title)
                .padding(.top, 20)
            
            Text("People You May Know")
            
            HStack {
                Image(systemName: "person.circle")
                    .resizable()
                    .frame(width: 25, height: 25)
                
                Text(friend.name) // Modified line
                
                // Add more details about the friend as needed
            }
        }
        .navigationBarTitle(friend.name)
    }
}


struct ContentView: View {
    let fakePeople: [Friend] = [
        Friend(name: "John Doe", image: "person.circle.fill"),
        Friend(name: "Jane Smith", image: "person.circle.fill"),
        Friend(name: "David Johnson", image: "person.circle.fill"),
        Friend(name: "Emily Davis", image: "person.circle.fill"),
        Friend(name: "Michael Wilson", image: "person.circle.fill"),
        Friend(name: "Sarah Brown", image: "person.circle.fill"),
        Friend(name: "Daniel Taylor", image: "person.circle.fill"),
        Friend(name: "Olivia Anderson", image: "person.circle.fill"),
        Friend(name: "James Thomas", image: "person.circle.fill"),
        Friend(name: "Sophia Martinez", image: "person.circle.fill")
    ]

    var body: some View {
        NavigationView {
            VStack {
                Text("People You May Know")
                    .font(.title)
                    .padding(.top, 20)

                List(fakePeople) { person in
                    NavigationLink(destination: FriendDetailView(friend: person)) {
                        HStack {
                            Image(systemName: person.image)
                                .resizable()
                                .frame(width: 55, height: 55)
                                .padding(.trailing, 10)
                            
                            VStack(alignment: .leading) {
                                HStack {
                                    Text(person.name)
                                        .font(.headline)
                                        .lineLimit(1) // Added line to limit to one line
                                    Spacer() // Added spacer to push buttons to the right
                                }
                                
                                HStack() {
                                    Button(action: {
                                        // Add Friend button action
                                    }) {
                                        Text("Add Friend")
                                            .frame(width: 120, height: 40)
                                            .background(Color.blue)
                                            .foregroundColor(.white)
                                            .cornerRadius(10)
                                    }
                                    
                                    Button(action: {
                                        // Remove button action
                                    }) {
                                        Text("Remove")
                                            .frame(width: 120, height: 40)
                                            .background(Color.gray)
                                            .foregroundColor(.white)
                                            .cornerRadius(10)
                                    }
                                }
                            }
                            .padding(.vertical, 5)
                        }
                        .padding(.vertical, 5)
                    }
                }
                .padding()
            }
            .navigationBarTitle("Friend Suggestions")
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
