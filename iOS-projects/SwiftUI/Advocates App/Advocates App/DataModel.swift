//
//  DataModel.swift
//  Advocates App
//
//  Created by Muessig, Kevin on 29.06.21.
//

import Foundation
import Combine
import SAPFoundation
import SAPOData

class DataModel: ObservableObject {
    @Published var advocates: [Member] = []
    
    init() {
        
        guard let serviceEndpoint = URL(string: "https://advocatesservice.cfapps.eu10.hana.ondemand.com/v2/advocates") else {
            return
        }
        let provider = OnlineODataProvider(serviceRoot: serviceEndpoint)
        let service = AdvocatesService(provider: provider)
        
        service.fetchMember { members, error in
            self.advocates = members ?? []
        }
    }
}
