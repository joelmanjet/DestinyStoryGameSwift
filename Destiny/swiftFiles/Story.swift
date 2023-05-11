//
//  Story.swift
//  Destiny
//
//  Created by Joel Joseph on 9/14/22.
//

import Foundation

struct story{
    
    
    let title: String
    let choice1: String
    let choice1index: Int
    let choice2: String
    let choice2index: Int
    
    init(title: String, choice1: String, choice1index: Int, choice2: String, choice2index: Int){
        self.title = title
        self.choice1 = choice1
        self.choice1index = choice1index
        self.choice2 = choice2
        self.choice2index = choice2index

    }
}

struct Destiny{
    
    var current: Int = 0
    let stories = [ //construct Story objects inside the list
        story(title: "You're rushing back home from college and you get lit up by a 1999 Crown Victoria Police Interceptor for going 50 over the speed limit in your 2020 Honda Civic Si down the highway, what do you do?", choice1: "I'll start running the CrownVic can't catch up right?", choice1index: 2, choice2: "Well, I don't want to get in trouble with my parents, ill pull over and be a good citizen.", choice2index: 1),
        
        story(title: "So you pull over to the shoulder of the road and wait for the old CrownVic to catch up... Once it finally caught up, an old police officer comes to your window screaming GET OUT OF THE CAR NOW WITH YOUR HANDS UP! Your heart starts pacing, and when you look in your right side view mirror you see the officer holding something that looks like a gun, what do you do?", choice1: "Get out of the car and follow the officer's directions.", choice1index: 3, choice2: "Or reconsider running.", choice2index: 4), //Story object at index 0
        
        story(title: "As you begin to accelerate the old CrownVic's menacing V8 can't keep up with your i4 turbo in the Civic, or so you thought, suddenly the old CrownVic starts reeling you in and you start to panic, what do you do?", choice1: "It's not too late, pull over and admit you are wrong, maybe face jail time and an impounded car for reckless driving and the disappointment from your parents.", choice1index: 3, choice2: "It's fine ill just take advantage of the traffic in front of me and hopefully trick the officer into thinking you're still continuing on the same road, but you pull a fast one off the highway and into a Walmart parking lot.", choice2index: 4),
        
        story(title: "So you follow the officer's directions and the officer calms down when he sees that you were compliant, sadly he puts you in handcuffs and detains you... After a while of questioning the officer gives you a ticket for reckless driving and your parents get called. So you drive home and hand your parents the keys and cry.", choice1: "Restart", choice1index: 0 , choice2: "End game", choice2index: -1),
        //Story object at index 1
        story(title: "You successfully pull off the trick and the officer continues going straight down the highway hindered by your escape, and you live to tell the tale.", choice1: "Restart", choice1index: 0, choice2: "End game", choice2index: -1),
    ]

    func title() -> String
    {
        return self.stories[current].title
    }
    func choice1() -> String
    {
        return self.stories[current].choice1
    }
    func choice2() -> String
    {
        return self.stories[current].choice2
    }
    func getCurrent() -> story
    {
        return self.stories[current]
    }
    func indexChoice1() -> Int
    {
        return self.stories[current].choice1index
    }
    func indexChoice2() -> Int
    {
        return self.stories[current].choice2index
    }
}
