//
//  ContentView.swift
//  3MOTD
//
//  Created by Qi Yang on 7/31/22.
//

//edge case: if select meal is selected, error: please select a meal

import SwiftUI

struct HomeView: View {
    @State private var selection = "Select Meal"
    @State private var isShowingResultsView = false
    @State private var date = Date()
    
    var meals = ["Select Meal", "Breakfast🥞", "Lunch🍔", "Dinner🍲", "A snack✨"]
    
    var body: some View {
            NavigationView {
                VStack(spacing: 20) {
                    Text(date, format: Date.FormatStyle(date: .numeric, time: .shortened))
                        .font(.system(size: 20, weight: .medium, design: .monospaced))
                    Text("Time to eat 🍽!")
                        .font(.system(size: 20, weight: .medium))
                    Spacer().frame(height:50)
                    Picker("Select Meal", selection: $selection) {
                        ForEach(meals, id:\.self) { meal in
                            Text("\(meal)").tag("\(meal)")
                        }
                        
                    }
                    .accentColor(.white)
                    .frame(width: 120, height: 30)
                    .background(Color("green"))
                    .cornerRadius(10)
                    .pickerStyle(.menu)
                    
                    Spacer().frame(height: 30)
                    
                    NavigationLink(destination: ResultsView(meal: selection), isActive: $isShowingResultsView) {
                        Button (action: {
                            isShowingResultsView = true
                        }){
                        Text("Generate")
                            .frame(width: 200, height: 200)
                            .font(.system(size: 24, weight: .semibold, design: .rounded))
                            .foregroundColor(.white)
                            .background(Color("tan"))
                            .clipShape(Circle())
                        }
                    }

                }
                .padding()
            }
            .navigationTitle("Back")
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}



