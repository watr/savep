//
//  Helpers.swift
//  openp
//
//  Created by watr on 2018/03/07.
//  Copyright © 2018年 HASHIMOTO Wataru. All rights reserved.
//

import Foundation
import Cocoa

extension NSSavePanel {
    struct Configuration {
        var message: String? = nil
        var canCreateDirectories: Bool = true
        var showsHiddenFiles: Bool = true
        var isExtensionHidden: Bool = false
        var allowedFileTypes: [String]? = nil
        var allowsOtherFileTypes: Bool = true
        var treatsFilePackagesAsDirectories: Bool = true
    }
    func apply(_ config: Configuration) -> Self {
        if let message = config.message {
            self.message = message
        }
        self.canCreateDirectories = config.canCreateDirectories
        self.showsHiddenFiles = config.showsHiddenFiles
        self.isExtensionHidden = config.isExtensionHidden
        self.allowedFileTypes = config.allowedFileTypes
        self.allowsOtherFileTypes = config.allowsOtherFileTypes
        self.treatsFilePackagesAsDirectories = config.treatsFilePackagesAsDirectories
        return self
    }
}

class AppDelegate: NSObject, NSApplicationDelegate {
    func applicationShouldTerminateAfterLastWindowClosed(_ sender: NSApplication) -> Bool {
        return false
    }
}
