//
//  BaseVC.swift
//  NYTimesTop
//
//  Created by Jeril V Raj on 13/06/22.
//

import UIKit
import SVProgressHUD
import Alamofire

class BaseVC: UIViewController {
    private let loaderDismissDelay: TimeInterval = 60
    
    func showLoader() {
        DispatchQueue.main.async {
            SVProgressHUD.show()
        }
    }
    
    func dismissLoader() {
        DispatchQueue.main.async {
            SVProgressHUD.dismiss()
        }
    }
    
    func showSuccessMessage(_ message: String) {
        SVProgressHUD.showSuccess(withStatus: message)
    }
    
    func showErrorMessage(_ error: String?) {
        SVProgressHUD.showError(withStatus: error ?? "unknown")
    }
}
