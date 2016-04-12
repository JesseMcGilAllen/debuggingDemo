//
//  ViewController.swift
//  DebuggingDemo
//
//  Created by Jesse McGil Allen on 4/10/16.
//  Copyright © 2016 Jesse McGil Allen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var testVar : Int = 0
    var testString : String = "Hello"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // expressionExample()
         exceptionExample()
        //watchExample()
        // replExample()
        
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func changeInLoadTest(inout Variable oldNumber : Int) {
        oldNumber = random()
    }
    
    func changeTestVar() {
        testVar = 333444
    }
    
    func testWatch(String watchString: String) {
        let newString : String = watchString
        
        print("New String: \(newString)")
    }
    
    func findSpecialCharacterIn(String string : String) -> String.Index? {
        let characterSet = NSCharacterSet.symbolCharacterSet()
        
        let range = string.rangeOfCharacterFromSet(characterSet)
        
        return range?.startIndex
    }
    
    func exceptionExample() {
        var debugTestString : String? = ""
        
        let debugTestString2 = "Hello World"
        
        findSpecialCharacterIn(String: debugTestString2)

    }
    
    func replExample() {
        
        let one = "One"
        let two = "Two"
        let three = "Three"
        let four = "Four"
        
        let numberStrings = [one, two, three, four]
        
    }
    
    func watchExample() {
        var inDidLoadTest : Int = 23
        let watchString : String = "Watch String Test"
        
        inDidLoadTest = 33
        
        testVar = 23
        changeTestVar()
        changeInLoadTest(Variable: &inDidLoadTest)
        testWatch(String: watchString)
        changeInLoadTest(Variable: &inDidLoadTest)
        
        }
    
    struct Card {
        var suit : Suit
        var value : Value
        enum Suit  {
            case Diamonds
            case Hearts
            case Clubs
            case Spades
        }
        enum Value {
            case Ace
            case One
            case Two
            case Three
            case Four
            case Five
            case Six
            case Seven
            case Eight
            case Nine
            case Ten
            case Jack
            case Queen
            case King
        }
        
        init(withSuit suit : Suit, andValue value : Value) {
            self.suit = suit
            self.value = value
        }
    }
    
    func expressionExample()  {
        let year : Int = 2016
        let dayOfWeek = "Monday"
        let fruits = ["kiwi", "oranges", "pineapple", "apples", "coconut", "grapes", "berries"]
        let person = ["name" : "Jesse"]
        
        let newCard = Card(withSuit : .Diamonds, andValue : .King)
        
    }
    
    


}

