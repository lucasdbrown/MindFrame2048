//
//  ViewController.swift
//  actual 2048
//
//  Created by Student on 8/2/18.
//  Copyright © 2018 MineFrameCamp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var myLabel: UILabel!
    var board = [[0,0,0,0],
                 [0,0,0,0],
                 [0,0,0,0],
                 [0,0,0,0]]
    
    //override func viewDidLoad() {
     //   super.viewDidLoad
    //}
    
    func printboard(){
        var buffer:String = ""
        for row in 0...3{
            for col in 0...3{
                buffer += String(board[row][col]) + ""//our string + new number + a space
            }
            buffer += "n/" //a new line character (it's an enter)
        }
        
        myLabel.text = buffer
    }
    
    @IBAction func hide(sender: AnyObject){
        myLabel.isHidden=true
        myLabel.isHidden=true
    }
    
    @IBAction func addToBoard(sender:AnyObject) {
        var empty = 0
        for k in 0 ... 15 {
            if board [k/4] [k%4] == 0{ //if spot is not empty
                empty += 1
            }
        }
        print(empty)
        
        //this picks a number from 0 to the # of empty spots
        let placement = arc4random_uniform(UInt32(empty))
        print(placement)
        
        var count = 0
        for k in 0...15{
            if board [k/4][k%4] == 0{ //if spot is not empty
                if UInt32(count) == placement{
                    board[k/4][k%4] = 2
                    break
                }
                count += 1
            }
        }
    }
}
    printBoard()

@IBAction func moveDown(){
    var row = 3 //start on bottom row
    
    for col in 0...3{
        if board[row][col] == 0{
            for i in 0...2{
                board[row][col] = board[ (row-1)col]
                board[row-1][col] = 0
                
            }
        board[0][col] = 0
    row = 3
        }
        }
printBoard()

    @IBAction func moveDown(){
        var row = 3 //start on bottom row
        var count = 0
        
        for col in 0...3{
            while board[row][col] == 0 && count < 3{
                for i in 1.. row{
                    board[row][col] == 0 && count < 3{
                        for i in 1...row-1{
                            board[row-i][col] = board[row-i-1][col]
                            board[row-i][col] = 0
                            
                            row -= 1
                            count += 1
                            
                        }
                    }
                }
            }
        }
}



