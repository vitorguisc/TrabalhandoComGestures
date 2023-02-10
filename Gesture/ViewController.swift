//
//  ViewController.swift
//  Gesture
//
//  Created by Vitor Guilherme da Silva Costa on 10/02/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var viewTapGesture: UIView!
    
    @IBOutlet weak var viewSwipeGesture: UIView!
    
    @IBOutlet weak var viewLongPressGesture: UIView!
    
    @IBOutlet weak var countLabel: UILabel!
    
    var count:Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configGesture()
        // Do any additional setup after loading the view.
    }
    
    func configGesture(){
        let tap = UITapGestureRecognizer(target: self, action: #selector(tapGesture(_:)))
        self.viewTapGesture.addGestureRecognizer(tap)
        
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(swipeLeftGesture(_:)))
        swipeLeft.direction = .left
        self.viewSwipeGesture.addGestureRecognizer(swipeLeft)
        
        let swipeRigth = UISwipeGestureRecognizer(target: self, action: #selector(swipeRigthGesture(_:)))
        swipeLeft.direction = .left
        self.viewSwipeGesture.addGestureRecognizer(swipeRigth)
        
        let longPress = UILongPressGestureRecognizer(target: self, action: #selector(self.longPressGesture(_:)))
        longPress.minimumPressDuration = 2
        self.viewLongPressGesture.addGestureRecognizer(longPress)
    }
    
    @objc func tapGesture(_ sender:UITapGestureRecognizer){
        print("view roxa selecionada")
        self.count += 1
        self.countLabel.text = String(count)
        
    }
    
    @objc func swipeLeftGesture(_ sender:UISwipeGestureRecognizer){
        print("view ciano selecionada")
        self.count -= 1
        self.countLabel.text = String(count)
        
    }
    
    @objc func swipeRigthGesture(_ sender:UISwipeGestureRecognizer){
        print("view ciano selecionada")
        self.count += 2
        self.countLabel.text = String(count)
        
    }
    
    @objc func longPressGesture(_ sender:UILongPressGestureRecognizer){
        print("view rosa selecionada")
        self.view.backgroundColor = .gray
        
    }
}

