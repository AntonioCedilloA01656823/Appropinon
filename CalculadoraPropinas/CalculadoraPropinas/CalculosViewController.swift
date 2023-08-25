//
//  CalculosViewController.swift
//  CalculadoraPropinas
//
//  Created by Usuario on 18/08/23.
//

import UIKit

class CalculosViewController: UIViewController {
    
    

    

    
    @IBOutlet weak var TotalCuenta: UITextField!
    @IBOutlet weak var TotalComensales: UITextField!
    @IBOutlet weak var PorcentajePropina: UITextField!
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    //MARK: -Verificacion vacios
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        
            if identifier == "Result" {
                if ((TotalCuenta.text == "" || TotalComensales.text == "" || PorcentajePropina.text == "")||(Double(PorcentajePropina.text!)!<=0)||(Double(TotalCuenta.text!)!<0)||(Double(TotalComensales.text!)!<=0)) {
                    let alert = UIAlertController(title: "Atencion", message: "Por favor rellene todos los campos correctamente (puede faltar texto o los datos no son validos)", preferredStyle: .alert)
                    alert.addAction(UIAlertAction(title: "Aceptar", style: .default))
                    present(alert, animated: true)
                    return false
                } else {
                    return true
                }
        }
        return false
}
    
    //MARK: -Verificacion numerica

    
    

    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        let siguienteVista = segue.destination as? DesgloseViewController
        
        siguienteVista?.TotalCuenta = Double((TotalCuenta?.text)!)!
        siguienteVista?.TotalComensales = Int((TotalComensales?.text)!)!
        siguienteVista?.PorcentajePropina = Double((PorcentajePropina?.text)!)!
        
        
    }
}


