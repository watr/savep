//
//  main.swift
//  savep
//
//  Created by HASHIMOTO Wataru on 2018/03/07.
//  Copyright © 2018年 wataruhash.info. All rights reserved.
//

import Foundation
import Cocoa
let currentVersionDescription: String = "savep 0.0.1"
let config: NSSavePanel.Configuration = NSSavePanel.Configuration()

NSApplication.shared.setActivationPolicy(.accessory)
NSApplication.shared.delegate = AppDelegate()

NSApplication.shared.activate(ignoringOtherApps: true)
let savePanel = NSSavePanel().apply(config)

let response = savePanel.runModal()
if response == .OK {
    print(savePanel.url!.path)
    exit(0)
}
else {
    exit(1)
}
