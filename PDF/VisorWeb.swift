//
//  VisorWeb.swift
//  practica11
//
//  Created by Moviles on 9/25/19.
//  Copyright © 2019 Moviles. All rights reserved.
//

import UIKit

class VisorWeb: UIViewController {
    var nombreArchivo: String?

    @IBOutlet var webView: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        print("\(nombreArchivo)")
        mostrarPDF()
        habilitarZoom()

        // Do any additional setup after loading the view.
    }
    func habilitarZoom(){
        webView.scalesPageToFit = true
    }
    func mostrarPDF(){
        if let pdf = Bundle.main.url(forResource: nombreArchivo, withExtension: ".pdf", subdirectory: nil, localization: nil){
            let req = NSURLRequest(url: pdf)
            webView.loadRequest(req as URLRequest)
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
