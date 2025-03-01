//
//  RunAuthCommand.swift
//  Core
//
//  Created by Camelia Ignat on 28.10.2021.
//  Copyright © 2021 Andrei Moldovan. All rights reserved.
//

import Foundation

public class RunAuthCommand: Command {
    public let tcTokenURL: String
    public let developerMode: Bool
    public let status: Bool
    public let messages: CommandMessages?
    
    private enum CodingKeys : String, CodingKey {
        case tcTokenURL
        case developerMode
        case status
        case messages
    }
    
    public init(cmd: String, developerMode: Bool, tcTokenURL: String, status: Bool, messages: CommandMessages?) {
        self.tcTokenURL = tcTokenURL
        self.developerMode = developerMode
        self.status = status
        self.messages = messages
        super.init(cmd: cmd)
    }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        tcTokenURL = try container.decode(String.self, forKey: .tcTokenURL)
        developerMode = try container.decode(Bool.self, forKey: .developerMode)
        status = try container.decode(Bool.self, forKey: .status)
        messages = try container.decode(CommandMessages.self, forKey: .messages)
        try super.init(from: decoder)
    }
    
    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(tcTokenURL, forKey: .tcTokenURL)
        try container.encode(developerMode, forKey: .developerMode)
        try container.encode(status, forKey: .status)
        try container.encode(messages, forKey: .messages)
    }
}

public struct CommandMessages: Codable {
    public let sessionStarted: String
    public let sessionFailed: String
    public let sessionSucceeded: String
    public let sessionInProgress: String
    
    public init(sessionStarted: String, sessionFailed: String, sessionSucceeded: String, sessionInProgress: String) {
        self.sessionStarted = sessionStarted
        self.sessionFailed = sessionFailed
        self.sessionSucceeded = sessionSucceeded
        self.sessionInProgress = sessionInProgress
    }
}
