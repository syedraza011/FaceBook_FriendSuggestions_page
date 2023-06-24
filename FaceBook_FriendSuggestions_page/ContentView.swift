//
//  ContentView.swift
//  FaceBook_FriendSuggestions_page
//
//  Created by Syed Raza on 6/23/23.
//




import SwiftUI


struct ContentView: View {
    let profilePictures: [String] = ["profile1", "profile2", "profile3", "profile4", "profile5", "profile6", "profile7"]

    var body: some View {
        VStack {
            Text("Suggestions")
                .font(.title)
                .padding(.top, 20)
            Text("People You may know ")
            HStack{
                Image(systemName: "person.circle")
                Text("Profile Name")
            }
        VStack {


            HStack{Button(action: {

            }, label: {Text("Add Friend")

            })
            .frame(width: 125, height: 40)
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(10)
                Button(action: {

                }, label: {Text("Remove")

                })
                .frame(width: 125, height: 40)
                .background(Color.gray)
                .foregroundColor(.white)
                .cornerRadius(10)
            }
        }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
