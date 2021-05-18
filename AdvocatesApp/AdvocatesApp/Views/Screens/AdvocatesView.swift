//
//  AdvocatesView.swift
//  Shop
//
//  Created by Muessig, Kevin on 12.02.21.
//

import SwiftUI

struct AdvocatesView: View {
//    @ObservedObject var filter: Filter
//    @State private var advocates = [Advocate]()
//    @State private var isShowingFilterView = false
//    let api: AdvocatesAPI
//
//    var filteredAdvocates: [Advocate] {
//        if filter.filterBy.isEmpty {
//            switch filter.sortBy {
//            case .none:
//                return advocates
//            case .name:
//                return advocates.sorted { $0.lastName < $1.lastName }
//            case .focusArea:
//                return advocates.sorted { $0.focusArea < $1.focusArea }
//            }
//        }
//        return advocates.filter {
//            let skillNames = $0.skills.map { $0.name }
//            return skillNames.contains(filter.filterBy)
//        }
//    }
    
    var body: some View {
//        NavigationView {
//            List(filteredAdvocates) { advocate in
//                AdvocatesCellView(advocate: advocate)
//            }
//            .navigationBarTitle("Developer Advocates")
//            .toolbar(content: {
//                ToolbarItem(placement: ToolbarItemPlacement.navigationBarTrailing,
//                            content: {
//                                Button("Filter", action: {
//                                    isShowingFilterView = true
//                                }).sheet(isPresented: $isShowingFilterView) {
//                                    AdvocatesFilterView(api: api)
//                                }
//                            })
//            })
//            .onAppear(perform: loadData)
//        }
        Text("Test")
    }
    
//    private func loadData() {
//        api.fetchAdvocates() { bool, result  in
//            if bool {
//                self.advocates = result
//            }
//        }
//    }
}

struct AdvocatesView_Previews: PreviewProvider {
    static var previews: some View {
//        AdvocatesView(filter: Filter(), api: MockViewPreviewAPI())
        AdvocatesView()
    }
}
