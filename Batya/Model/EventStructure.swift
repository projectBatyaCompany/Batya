//
//  EventStructure.swift
//  Batya
//
//  Created by AlexanderN on 16.03.2018.
//  Copyright © 2018 AlexanderN. All rights reserved.
//

import Foundation

struct EventStructure {
    let id: Int
    var emotionFamily: Int?
    var probability: Int
    var repeatable: Bool //Is it necessary in new conception?
    var priority: Int
    var previous: [Int] //Is it necessary in new conception?
    var listOfIdNecessaryEvents: [Int] //The property have to be instead the "previous"
    
    // eventPrevious.n.eventEnding.n - I don't know what to do with that
    
    var listOfIdNecessaryCards: [Int]
    
    struct CharacterAndTheyEmotions {
        let id: Int
        let emotionAngry: Int
        let emotionSad: Int
        let emotionInspire: Int
        let emotionHappy: Int
        let emotionNeutral: Int
        let status: String?
        
    }
    var listOfIdNecessaryCharactersEmotions: [CharacterAndTheyEmotions]?
    
    struct EndingEvent {
        let name: String
        let effectedCharacters: [CharacterAndTheyEmotions]
    }
    
    var listOfEndingEvent: [EndingEvent]
  
}
