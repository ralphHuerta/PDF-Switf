//
//  ViewController.swift
//  practica11
//
//  Created by Moviles on 9/25/19.
//  Copyright © 2019 Moviles. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
    var arreglo: [String] = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        arreglo = ["pdf1","pdf2","pdf3"]
        // Do any additional setup after loading the view.
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return arreglo.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celda", for: indexPath)
        cell.textLabel!.text = self.arreglo[indexPath.row]
        cell.imageView!.image = UIImage(named: "pdf4.png")
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        let pdfSeleccionado = indexPath.row
        self.performSegue(withIdentifier: "visorPDF", sender: pdfSeleccionado)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        let seleccion = sender as! Int
        let webViewObjeto: VisorWeb = segue.destination as! VisorWeb
        webViewObjeto.nombreArchivo = self.arreglo[seleccion]
    }
    




}

