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

public class ProductDataLoader {

    var productData = [ProductData]()

    init() {
        loadProducts()
    }

    func loadProducts() {

        if let jsonFileLocation = Bundle.main.url(forResource: AEPDemoConstants.Strings.productListFilename, withExtension: "json") {
            let data = try? Data(contentsOf: jsonFileLocation)
            let jsonDecoder = JSONDecoder()
            if let unwrappedData = data {
                if let unwrappedProductDataFromJson = try? jsonDecoder.decode([ProductData].self, from: unwrappedData) {
                    self.productData = unwrappedProductDataFromJson
                }
            }
        }
    }
}
