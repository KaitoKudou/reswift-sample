//
//  AppStore.swift
//  reswift-sample
//
//  Created by 工藤 海斗 on 2023/06/13.
//

import Foundation
import ReSwift

final class AppStore {
    static let shared = AppStore()

    let store: Store<AppState>

    private init() {
        store = Store<AppState>(reducer: appReducer, state: nil)
    }
}
