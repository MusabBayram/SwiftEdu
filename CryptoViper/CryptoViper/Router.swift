//
//  Router.swift
//  CryptoViper
//
//  Created by Musab Bahadır Bayram on 3.09.2023.
//

import Foundation
import UIKit

//talks to -> presenter
//class, protocol
//EntryPoint

typealias EntryPoint = AnyView & UIViewController

protocol AnyRouter {
    
    var entry : EntryPoint? {get}
    
    static func startExecution() -> AnyRouter
}

class CryptoRouter : AnyRouter {
    
    var entry : EntryPoint?
    
    static func startExecution() -> AnyRouter {
        
        let router = CryptoRouter()
        
        var view : AnyView = CryptoViewController()
        var presenter : AnyPresenter = CryptoPresenter()
        var interactor : AnyInteractor = CryptoInteractor()
        
        view.presenter = presenter
        presenter.view = view
        presenter.router = router
        presenter.interactor = interactor
        
        interactor.presenter = presenter
        
        router.entry = view as? EntryPoint
        
        return router
    }
    
    
}
