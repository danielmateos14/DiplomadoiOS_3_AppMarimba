//
//  ViewController.swift
//  TerceraAppMarimba
//
//  Created by djdenielb on 06/04/22.
//

import UIKit

class ViewController: UIViewController{
    var reproductor = Reproductor()
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
//Conexion de todos los botones en un mismo action, solo hay que arrastrarlos todos al mismo circulito
    @IBAction func btnTodos(_ sender: UIButton) {
        print(sender.titleLabel?.text ?? "bien")
        reproductor.reproducir(notaMusical: sender.titleLabel?.text ?? "bien")
    }
}



