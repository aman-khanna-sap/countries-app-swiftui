//
//  ContentView.swift
//  countries
//
//  Created by Aman Khanna on 24/06/20.
//  Copyright © 2020 Aman Khanna. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(countriesData) { item in
                NavigationLink(destination: Text("Capital - " + item.capital)
                    .font(.largeTitle)) {
                    Image(item.imageName)
                        .cornerRadius(20)
                        .padding()
                        
                    Text(item.name)
                        .font(.title)
                        .foregroundColor(.blue)
                }
            }
        .navigationBarTitle(Text("Countries"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Country: Identifiable {
    var id = UUID()
    var name: String
    var capital: String
    var imageName: String { return name }
}

let countriesData = [
    Country(name: "India", capital: "New Delhi"),
    Country(name: "Ethiopia", capital: "Addis Ababa"),
    Country(name: "Fiji", capital: "Suva"),
    Country(name: "Angola", capital: "Luanda"),
    Country(name: "Turkey", capital: "Ankara")
]
