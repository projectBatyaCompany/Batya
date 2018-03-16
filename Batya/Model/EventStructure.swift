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
    var probability: Double
    var repeatable: Bool
    var priority: Int
    //var previous: [Int] //Is it necessary in the new conception?
    
    struct PreviousEvents {
        let id: Int
        let endings: [String]
    }
    
    var listOfIdNecessaryEvents: [PreviousEvents]? //The property have to be instead the "previous"
    
   
    
    var listOfIdNecessaryCards: [Int]?
    
    struct CharacterAndTheyEmotions {
        let id: Int
        let emotionAngry: Int?
        let emotionSad: Int?
        let emotionInspire: Int?
        let emotionHappy: Int?
        let emotionNeutral: Int?
        let status: String?
        
    }
    var listOfIdNecessaryCharactersEmotions: [CharacterAndTheyEmotions]?
    
    struct EndingEvent {
        let name: String
        let effectedCharacters: [CharacterAndTheyEmotions]
    }
    
    var listOfEndingEvent: [EndingEvent]
  
}

//example by documentation

let event1 = EventStructure(
    id: 123456, // daughterBuyIcecream
    emotionFamily: nil,
    probability: 0.2,
    repeatable: true,
    priority: 1,
    listOfIdNecessaryEvents: nil, //eventPrevios.n and eventPrecios.n.eventEnding.n
    listOfIdNecessaryCards: nil,
    listOfIdNecessaryCharactersEmotions: [
        EventStructure.CharacterAndTheyEmotions(
            id: 123, //daughterID
            emotionAngry: 20,
            emotionSad: 10,
            emotionInspire: nil,
            emotionHappy: nil,
            emotionNeutral: nil,
            status: nil),
        ],
    listOfEndingEvent: [
        EventStructure.EndingEvent(
            name: "buy",
            effectedCharacters: [
                EventStructure.CharacterAndTheyEmotions(
                    id: 123, //daughterID
                    emotionAngry: -20,
                    emotionSad: -20,
                    emotionInspire: 15,
                    emotionHappy: 20,
                    emotionNeutral: 10,
                    status: nil),
                EventStructure.CharacterAndTheyEmotions(
                    id: 321, //wifeID
                    emotionAngry: 20,
                    emotionSad: -10,
                    emotionInspire: 10,
                    emotionHappy: 20,
                    emotionNeutral: 10,
                    status: nil)]),
        EventStructure.EndingEvent(
            name: "nobuy",
            effectedCharacters: [
                EventStructure.CharacterAndTheyEmotions(
                    id: 123, //daughterID
                    emotionAngry: 15,
                    emotionSad: 20,
                    emotionInspire: -20,
                    emotionHappy: -15,
                    emotionNeutral: 20,
                    status: nil),
                EventStructure.CharacterAndTheyEmotions(
                    id: 321, //wifeID
                    emotionAngry: 20,
                    emotionSad: 10,
                    emotionInspire: 0,
                    emotionHappy: 15,
                    emotionNeutral: 20,
                    status: nil)])
    ]
)

// event1.listOfEndingEvent[0].effectedCharacters[1].id
