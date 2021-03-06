//
// Copyright 2020 Adobe. All rights reserved.
// This file is licensed to you under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License. You may obtain a copy
// of the License at http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software distributed under
// the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR REPRESENTATIONS
// OF ANY KIND, either express or implied. See the License for the specific language
// governing permissions and limitations under the License.
//

import Foundation

/// A response from the Adobe Experience Edge server.
/// An `EdgeResponse` is the top-level response object received from the server.
struct EdgeResponse: Codable {

    /// The request identifier associated with this response
    let requestId: String?

    /// List of event handles received from the Experience Edge  Network
    let handle: [EdgeEventHandle]?

    /// List of errors received from Experience Edge Network
    let errors: [EdgeEventError]?

    /// List of warnings received from Experience Edge Network
    let warnings: [EdgeEventError]?
}
