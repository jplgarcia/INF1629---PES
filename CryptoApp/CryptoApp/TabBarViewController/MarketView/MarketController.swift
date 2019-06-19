//
//  MarketController.swift
//  CryptoApp
//
//  Created by Wellington Bezerra on 6/19/19.
//  Copyright © 2019 Felipe Viberti. All rights reserved.
//

protocol MarketControllerOutput: class {
    
    func success(coins: [Coin])
    func error()
}

final class MarketController {
    
    private var coins: [Coin] = []
    weak var output: MarketControllerOutput?
    
    func fetchCoins() {
        
        // fazer request para pegar as moedas
        
        // insere no array de moedas
        coins = coinsMock()
        
        //passa as coins para a  view controller
        self.output?.success(coins: coins)
    }
    
    func getCoins() -> [Coin] {
        
        return coins
    }
    
    private func coinsMock() -> [Coin] {
        
        let coin1 = Coin(name: "Bitcoin", initials: "BTC", imageView: "", value: "$ 9000.00", percentage: "+3.1 %")
        let coin2 = Coin(name: "Etherium", initials: "ETH", imageView: "", value: "$ 9490.26", percentage: "+37.4 %")
        let coin3 = Coin(name: "Litecoin", initials: "LTC", imageView: "", value: "$ 130.31", percentage: "-0.3 %")
        let coin4 = Coin(name: "Ripple", initials: "XRP", imageView: "", value: "$ 0.49", percentage: "+13.4 %")
        
        return [coin1, coin2, coin3, coin4]
    }
    
}
