//
//  SmartCredentialsEIDFactory.swift
//  EID
//
//  Created by Camelia Ignat on 18.10.2021.
//

import Foundation
import Core

public struct SmartCredentialsEIDFactory {
    
    public static func smartCredentialsOTPAPI(configuration: SmartCredentialsConfiguration, storage: StorageAPI, cameraScanner: CameraScannerAPI) -> EIDAPI {
        return EIDController(configuration: configuration)
    }
}
