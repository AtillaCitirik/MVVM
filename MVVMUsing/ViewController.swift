//
//  ViewController.swift
//  MVVMUsing
//
//  Created by Atilla Çıtırık on 22.05.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelSonuc: UILabel!
    @IBOutlet weak var tfSayi1: UITextField!
    @IBOutlet weak var tfSayi2: UITextField!
    
    var viewModel = AnasayfaViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        _ = viewModel.sonuc.subscribe(onNext: { s in
            self.labelSonuc.text = s
            
        })
        
    }

    @IBAction func buttonToplama(_ sender: Any) {
        if let alinanSayi1 = tfSayi1.text, let alinanSayi2 = tfSayi2.text {
            viewModel.toplamaYap(alinanSayi1: alinanSayi1, alinanSayi2: alinanSayi2)
        }
    }
    
    @IBAction func buttonCarpma(_ sender: Any) {
        if let alinanSayi1 = tfSayi1.text, let alinanSayi2 = tfSayi2.text {
            viewModel.carpmaYap(alinanSayi1: alinanSayi1, alinanSayi2: alinanSayi2)
        }
    }
    
}

