//
//  QRCodeView.swift
//  NavigationDemo
//
//  Created by Joshua Buchanan on 4/1/23.
//

import SwiftUI

struct QRCodeView: View {
    
    private var qrcode: String
    
    init(url: String) {
        self.qrcode = url
    }
    
    var body: some View {
        Text("QR CODE GOES HERE: \(qrcode)")
    }
}
