//
//  main.swift
//  FamilyTree
//
//  Created by Klaudia Popow on 05/08/2019.
//  Copyright © 2019 Klaudia Popow. All rights reserved.
//

import Foundation

 class Node {
    let name: String
    let bornDate: String
    let dieDate: String?
    var children: [Node] = []
    weak var parent: Node?
    
    init(name: String, bornDate: String, dieDate: String?) {
        self.name = name
        self.bornDate = bornDate
        self.dieDate = dieDate
    }
    
    func add(child: Node) {
        children.append(child)
        child.parent = self
    }
}
let asia = Node(name: "Asia", bornDate: "12.03.1946", dieDate: "18.04.2010")
let basia = Node(name: "Basia", bornDate: "02.12.1980", dieDate: nil)
let kasia = Node(name: "Kasia", bornDate: "03.12.2005", dieDate: nil)
let jasiu = Node(name: "Jasiu", bornDate: "09.10.2007", dieDate: nil)

asia.add(child: basia)
basia.add(child: kasia)
basia.add(child: jasiu)

// print drzewka :(
