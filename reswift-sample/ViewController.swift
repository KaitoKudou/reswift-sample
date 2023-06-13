//
//  ViewController.swift
//  reswift-sample
//
//  Created by 工藤 海斗 on 2023/06/13.
//

import RxCocoa
import RxSwift
import UIKit

final class ViewController: UIViewController {

    @IBOutlet private weak var counterLabel: UILabel!
    @IBOutlet private weak var incrementButton: UIButton!
    @IBOutlet private weak var decrementButton: UIButton!
    private var disposeBag = DisposeBag()

    override func viewDidLoad() {
        super.viewDidLoad()

        initObserver()
    }

    private func initObserver() {
        incrementButton.rx.tap
            .subscribe(onNext: { [weak self] _ in
                guard let self = self else { return }
                store.dispatch(AppState.IncrementAction())
                self.counterLabel.text = "\(store.state.count)"
            })
            .disposed(by: disposeBag)

        decrementButton.rx.tap
            .subscribe(onNext: { [weak self] _ in
                guard let self = self else { return }
                store.dispatch(AppState.DecrementAction())
                self.counterLabel.text = "\(store.state.count)"
            })
            .disposed(by: disposeBag)
    }
}
