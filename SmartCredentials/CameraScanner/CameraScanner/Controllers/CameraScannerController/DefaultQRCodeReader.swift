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

import Core

class DefaultQRCodeReader {

    var qrCodeCompletionHandler: QRCodeCompletionHandler?
    var qrCodeReader: QRCodeReader?
    
    func startQRReader(in containerView: UIView, with completionHandler: @escaping QRCodeCompletionHandler) {
        qrCodeCompletionHandler = completionHandler
        
        qrCodeReader = QRCodeReader(videoContainerView: containerView, delegate: self)
        qrCodeReader?.start()
    }
}

extension DefaultQRCodeReader: QRCodeReaderProtocol {
    func qrCodeReader(_ qrCodeReader: QRCodeReader, didFind qrCode: String) {
        qrCodeReader.stop()
        qrCodeCompletionHandler?(.success(result: qrCode))
    }
}
