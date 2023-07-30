//
//  CryptoViewModel.swift
//  CryptoCrazy
//
//  Created by Musab Bahadır Bayram on 30.07.2023.
//

import Foundation


struct CryptoListViewModel {
    
    let cryptoCurrencyList: [CryptoCurrency]
    
    func numberOfRowInSection() -> Int {
        return self.cryptoCurrencyList.count
    }
    
    func cryptoAtIndex(_ index: Int) -> CryptoViewModel {
        let crypto = self.cryptoCurrencyList[index]
        return CryptoViewModel(cryptoCurrency: cryptoß)
    }
}

struct CryptoViewModel {
    
    let cryptoCurrency: CryptoCurrency
    
    var name: String {
        return self.cryptoCurrency.currency
    }
    
    var price: String {
        return self.cryptoCurrency.price
    }
}
