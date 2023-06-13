//
//  AppReducer.swift
//  reswift-sample
//
//  Created by 工藤 海斗 on 2023/06/13.
//

import Foundation
import ReSwift

func appReducer(action: Action, state: AppState?) -> AppState {
    var state = state ?? AppState()

    switch action {
    case is AppState.IncrementAction:
        state.count += 1
    case is AppState.DecrementAction:
        state.count -= 1
    default: break
    }

    return state
}
