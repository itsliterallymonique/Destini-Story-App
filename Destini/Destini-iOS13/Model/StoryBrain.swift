//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct StoryBrain {
    let stories = [
        //0
        Story(title: "You are out to buy some fries and a big juicy burger from your local McDonald's when you come across a dog sitting on the sidewalk.",
            choice1: "Continue on my way. Somebody probably owns him.", choice1Destination: 1,
            choice2: "Oh no! Let me go check whether his owner's details are on his collar.", choice2Destination: 2),
        //1
        Story(title: "You are now inside McDonald's, the aromatic smell of grease and food  fills your nostrils. The cashier asks you: 'Welcome to McDonald's! What would you like to order?'",
            choice1: "I'll have some large fries and chicken nuggets, please.", choice1Destination: 4,
            choice2: "I'll have a Big Mac with a hot fudge sunday and large fries.", choice2Destination: 3),
        //2
        Story(title: "You see that the dog does not have any of his owner's details. You contemplate what can you do to help this poor pupper out!",
            choice1: "I'll bring him home! It seems like he needs a nice place to stay.", choice1Destination: 5,
            choice2: "I'll take him to McDonald's with me to give him a nice meal of fries!", choice2Destination: 6),
        //3
        Story(title: "You see the dog right outside the McDonald's shop, it seems to have followed you there.",
            choice1: "I'll just go and finish my food inside the store.", choice1Destination: 4,
            choice2: "Feed him some of my fries. Maybe he is hungry.", choice2Destination: 6),
        //4
        Story(title: "You did not help the dog! Why not? You have -2 000 good person points. If you ever see a stray dog, help out buy calling your local shelters or stray dog organisations (e.g. SOSD)!",
            choice1: "The", choice1Destination: 0,
            choice2: "End", choice2Destination: 0),
        //5
        Story(title: "You take the dog to your house and it instantly jumps on your sofa to sleep there. Thank you for taking the dog in! You have earned 10 000 good person points! Well done!",
            choice1: "The", choice1Destination: 0,
            choice2: "End", choice2Destination: 0),
        //6
        Story(title: "The dog gladly eats the food and thanks you with licks! You have helped the dog and have earned 1 000 good person points! Well done!",
        choice1: "The", choice1Destination: 0,
        choice2: "End", choice2Destination: 0)
    ]
    
    var storyNumber = 0
    
    func getStoryText() -> String {
        return stories[storyNumber].title
    }
    
    func getStoryChoice1() -> String {
        return stories[storyNumber].choice1
    }
    func getStoryChoice2() -> String {
        return stories[storyNumber].choice2
    }
    
    mutating func nextStory(_ userAnswer: String) {
        if (userAnswer == stories[storyNumber].choice1) {
            storyNumber = stories[storyNumber].choice1Destination
        } else {
            storyNumber = stories[storyNumber].choice2Destination
        }
    }
}
