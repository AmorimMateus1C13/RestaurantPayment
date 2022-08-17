//
//  ViewProtocol.swift
//  RestaurantPay
//
//  Created by Mateus Amorim on 17/08/22.
//

import Foundation

protocol ViewProtocol {
    func setupViewConfiguration()
    func buildViewHierarchy()
    func setupConstrants()
}

extension ViewProtocol {
    func setupViewConfiguration() {
        buildViewHierarchy()
        setupConstrants()
    }
}

