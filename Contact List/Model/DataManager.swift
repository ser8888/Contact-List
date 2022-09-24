//
//  DataManager.swift
//  Contact List
//
//  Created by Sergejs Tiselskis on 24/09/2022.
//


class DataManager {
    
    static let shared = DataManager()
    private init() {}
    
    let firstNames = ["Uldis", "Sandis", "Janis", "Viesturs", "Ivars", "Krists", "Kaspars", "Ellijs","Andris", "Gunars", "Sandis"]
    let lastNames = ["Ozols", "Ozolins", "Berzins", "Kolnzols", "Karins", "Zvirbulis", "Jansons", "Liepins", "Preikulis", "Znaroks", "Vaverite" ]
    let emais = [ "alus@inbox.lv", "vins@inbox.lv", "janisrozes@inbox.lv", "purvis@inbox.lv", "sakta@inbox.lv", "lidosta@inbox.lv", "centrs@inbox.lv", "valoda@inbox.lv" , "dizalus@inbox.lv", "tervete@inbox.lv", "porteris@inbox.lv"]
    let phones = ["29231234","12928364","19203846", "91028365", "29401183", "23981045", "23090765", "22310485", "21230482", "92039412", "23103948"]
}

