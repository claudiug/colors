//
//  MainWindowController.swift
//  RGBWell
//
//  Created by bender on 6/20/15.
//  Copyright © 2015 claudiucancode. All rights reserved.
//

import Cocoa


class MainWindowController: NSWindowController {
    
    @IBOutlet weak var colorWell: NSColorWell!
    
    @IBOutlet weak var rSlider: NSSlider!
    @IBOutlet weak var gSlider: NSSlider!
    @IBOutlet weak var bSlider: NSSlider!
    
    var r = 0.0
    var g = 0.0
    var b = 0.0
    let a = 1.0
    
    func updateColor() {
        let newColor = NSColor(calibratedRed: CGFloat(r),green: CGFloat(g),blue: CGFloat(b),alpha: CGFloat(a))
        colorWell.color = newColor
    }


     override func windowDidLoad() {
        super.windowDidLoad()
        rSlider.doubleValue = r
        gSlider.doubleValue = g
        bSlider.doubleValue = b
    }
    
    override var windowNibName: String? {
        return "MainWindowController"
    }
    
    @IBAction func ajustRed(sender: NSSlider){
        print("R slider value \(sender.floatValue)")
        r = sender.doubleValue
        updateColor()
    }
    
    
    @IBAction func ajustBlue(sender: NSSlider){
        print("B slider value \(sender.floatValue)")
        b = sender.doubleValue
        updateColor()
    }
    
    @IBAction func ajustGreen(sender: NSSlider){
        print("G slider value \(sender.floatValue)")
        g = sender.doubleValue
        updateColor()
    }
    
}




