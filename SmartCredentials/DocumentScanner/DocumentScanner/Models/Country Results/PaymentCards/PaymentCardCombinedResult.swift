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

public class PaymentCardCombinedResult: PaymentCardResult {
    
    public var cardNumber: String
    public var owner: String
    public var validThru: String
    public var cvv: String
    public var inventoryNumber: String
    
    init(with result: MBPaymentCardCombinedRecognizerResult) {
        cardNumber = result.cardNumber
        owner = result.owner
        validThru = result.validThru.originalDateString != nil ? result.validThru.originalDateString! : ""
        cvv = result.cvv
        inventoryNumber = result.inventoryNumber
        
        super.init(with: result.fullDocumentFrontImage?.image)
    }
}
