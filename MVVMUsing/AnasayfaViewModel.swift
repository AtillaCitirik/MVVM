//
//  Anasayfaviewmodel.swift
//  MVVMUsing
//
//  Created by Atilla Çıtırık on 23.05.2024.
//

import Foundation
import RxSwift

class AnasayfaViewModel {
    
    var sonuc = BehaviorSubject<String>(value: "0")
    
    func toplamaYap(alinanSayi1:String, alinanSayi2:String) {
        
        if let sayi1 = Int(alinanSayi1), let sayi2 = Int(alinanSayi2){
            let toplam = sayi1 + sayi2
            sonuc.onNext(String(toplam))
        }
        
    }
    
    func carpmaYap(alinanSayi1:String, alinanSayi2:String) {
       
        if let sayi1 = Int(alinanSayi1), let sayi2 = Int(alinanSayi2){
            let carpma = sayi1 * sayi2
            sonuc.onNext(String(carpma))
        }
        
    }
    
    
}
