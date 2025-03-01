//
//  EnterPINMessage.swift
//  Core
//
//  Created by Camelia Ignat on 28.10.2021.
//  Copyright © 2021 Andrei Moldovan. All rights reserved.
//

import Foundation

public class EnterPINMessage: Message {
    public let error: String?
    public let reader: ReaderModel?
    
    private enum CodingKeys : String, CodingKey {
        case error
        case reader
    }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        error = try container.decodeIfPresent(String.self, forKey: .error)
        reader = try container.decodeIfPresent(ReaderModel.self, forKey: .reader)
        try super.init(from: decoder)
    }
    
    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(error, forKey: .error)
        try container.encode(reader, forKey: .reader)
    }
}
