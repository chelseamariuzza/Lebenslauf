//
//  CVViewModel.swift
//  Lebenslauf
//
//  Created by Charles Mariuzza on 14.05.25.
//

import Foundation
import UIKit

class CVViewModel : ObservableObject {
    
    private let phoneNumber = "4915164744584"
    
    func call() {
        if let url = URL(string: "tel://\(phoneNumber)") {
            UIApplication.shared.open(url)
        }
    }
}
