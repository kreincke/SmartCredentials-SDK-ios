/*
* Copyright (c) 2019 Telekom Deutschland AG
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*     http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/

import MicroBlink

public class MoroccoIDFrontCardResult: IDCardResult {
    
    public var dateOfExpiry: Date?
    public var placeOfBirth: String?
    public var sex: String?
    
    init(with result: MBMoroccoIdFrontRecognizerResult) {
        super.init()
        
        self.dateOfBirth = result.dateOfBirth.date
        self.dateOfExpiry = result.dateOfExpiry.date
        self.documentNumber = result.documentNumber
        self.firstName = result.name
        self.placeOfBirth = result.placeOfBirth
        self.sex = result.sex
        self.lastName = result.surname
        self.faceImage = result.faceImage?.image
    }
}
