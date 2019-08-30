//
//  ViewController.swift
//  Alcool ou Gasolina
//
//  Created by Cassia Franco on 05/08/2019.
//  Copyright © 2019 Cassia Franco. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var precoAlcoolTextField: UITextField!
    @IBOutlet weak var precoGasolinaTextFiedl: UITextField!
    @IBOutlet weak var resultadoLabel: UILabel!
    
    @IBAction func calcularCombustivel(_ sender: AnyObject) {
        
        var precoAlcool: Double = 0
        var precoGasolina: Double = 0
        var precoResulado: Double = 0
        
        // Validacoes
        
        if let resultadoAlcool = precoAlcoolTextField.text{
            if resultadoAlcool != ""{
                if let resultadoNumero = Double(resultadoAlcool){
                    precoAlcool = resultadoNumero
                }
            }
        }
        if let resultadoGasolina = precoGasolinaTextFiedl.text{
            if resultadoGasolina != ""{
                if let resultadoNumero = Double(resultadoGasolina){
                    precoGasolina = resultadoNumero
                }
            }
        }
        // calcular preco Alcool / gasolina >= 0.7
        
        precoResulado = precoAlcool/precoGasolina
        
        if precoResulado >= 0.7{
            resultadoLabel.text = " Melhor usar Gasolina!!"
        }else{
            resultadoLabel.text = "Melhor usar Alcool !!"
            }
        }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

