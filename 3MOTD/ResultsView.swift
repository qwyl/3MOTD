//
//  ResultsView.swift
//  3MOTD
//
//  Created by Qi Yang on 8/4/22.
//

//if generating multiple times, remove already generated from list ie. use arraylist
import SwiftUI

struct ResultsView: View {
    let meal: String
    
    
    
    //get random num from 1 to length of array of that meal, return string value from array
    func randomMeal() -> String {
        
        let breakfast = ["random omelette", "plain yogurt and berries", "random toast", "random smoothie", "sausage and eggs"]
        let lunch = ["fried chicken salad", "salmon rice bowl", "nacho cheese and tortilla chips", "mushroom omelette over rice", "avocado egg bacon salad", "potato egg salad", "cheesy ramen", "wonton", "chicken alfredo", "curry rice"]
        let dinner = ["fried chicken salad", "salmon rice bowl", "nacho cheese and tortilla chips", "mushroom omelette over rice", "avocado egg bacon salad", "potato egg salad", "cheesy ramen", "wonton", "chicken alfredo", "curry rice"]
        let snack = ["guac and chips", "cheese and prosciutto", "yogurt fruit bowl", "cheese toast", "pudding"]
        //let combo = ["fried chicken salad", "salmon rice bowl", "nacho cheese and tortilla chips", "mushroom omelette over rice", "avocado egg bacon salad", "potato egg salad", "cheesy ramen", "wonton", "chicken alfredo", "curry rice"]
        
        switch meal {
            case "Breakfast🥞":
            let rng = Int.random(in: 1...breakfast.count)
                return breakfast[rng - 1]
            case "Lunch🍔":
            let rng = Int.random(in: 1...lunch.count)
                return lunch[rng - 1]
            case "Dinner🍲":
            let rng = Int.random(in: 1...dinner.count)
                return dinner[rng - 1]
            case "A snack✨":
            let rng = Int.random(in: 1...snack.count)
                return snack[rng - 1]
            default:
                return ""
        }
    }
    @State private var degrees = Angle.degrees(0)
    //loading animation
    var body: some View {
        
        VStack(spacing: 20) {
        let selected = randomMeal()
        Text("\(meal)")
            .frame(width: 100, height: 50)
            .background(Color("buttercup"))
            .cornerRadius(5)
        Text("Let's eat \(selected)!")
        
        //insert image of food: will need to change data structure, is illegal .?
        //possible animation
        }
    }
}

struct ResultsView_Previews: PreviewProvider {
    static var previews: some View {
        ResultsView(meal: "")
    }
}
