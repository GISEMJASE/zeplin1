//
//  DateCate.swift
//  zeplin1
//
//  Created by Sem on 02/05/23.
//

import Foundation


class DataCate {
    public func setCateg() -> [Categories] {
        var CategoriesFood: [Categories] = []
        let comidaChina = Categories(ttle: "Comida China", rt: "3.5", tmr: "20 m", mg: ["ch1", "ch2", "ch3", "ch4"])
        let hamburguesas = Categories(ttle: "Hamburguesas", rt: "4.2", tmr: "30 m", mg: ["a1","a2","a3","a4"])
        let alitas = Categories(ttle: "Alitas", rt: "4.8", tmr: "40 m", mg: ["al1", "al2", "al3", "al4"])
        let italia = Categories(ttle: "Comida italiana", rt: "3.8", tmr: "50 m", mg: ["i1","i2","i3","i4"])
        let pizzas = Categories(ttle: "Pizzas", rt: "3.8", tmr: "30 m", mg: ["p1", "p2", "p3", "p4"])
        
        CategoriesFood.append(comidaChina)
        CategoriesFood.append(hamburguesas)
        CategoriesFood.append(alitas)
        CategoriesFood.append(italia)
        CategoriesFood.append(pizzas)
        
        
        return CategoriesFood
        
    }
}
