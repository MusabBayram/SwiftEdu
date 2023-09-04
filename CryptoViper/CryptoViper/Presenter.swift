//
//  Presenter.swift
//  CryptoViper
//
//  Created by Musab Bahadır Bayram on 3.09.2023.
//

import Foundation


//talks to -> interactor, router, view
//class, protocol

enum NetworkError : Error {
    case NetworkFailed
    case ParsingFailed
}

protocol AnyPresenter {
    
    var router : AnyRouter? {get set}
    var interactor : AnyInteractor? {get set}
    var view : AnyView {get set}
    
    func interactorDidDownloadCrypto(result: Result<[Crypto], Error>)
}

class CryptoPresenter : AnyPresenter {
    var router: AnyRouter?
    
    var interactor: AnyInteractor?
    
    var view: AnyView
    
    func interactorDidDownloadCrypto(result: Result<[Crypto], Error>) {
        switch result {
        case .success(let crptos):
            print("dasddfs")
        case .failure(let error):
            print("dfsafdsf")
        }
    }
    
    
}
