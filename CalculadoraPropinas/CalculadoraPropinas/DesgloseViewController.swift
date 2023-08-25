//
//  DesgloseViewController.swift
//  CalculadoraPropinas
//
//  Created by Usuario on 18/08/23.
//

import UIKit

class DesgloseViewController: UIViewController {

    var TotalCuenta: Double = 1.0
    var TotalComensales: Int = 1
    var PorcentajePropina: Double = 1.0
    
    
    @IBOutlet weak var totalPropinaOut: UILabel!
    @IBOutlet weak var propinaOut: UILabel!
    @IBOutlet weak var subtotalOut: UILabel!
    @IBOutlet weak var ivaOut: UILabel!
    @IBOutlet weak var totalIvaOut: UILabel!
    @IBOutlet weak var totalTotalout: UILabel!
    @IBOutlet weak var totalComensalOut: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let propinaCuenta = (PorcentajePropina * TotalCuenta)/100
        let IVA = (16*TotalCuenta)/100

        //Calculo de totales
        let totalConPropina = TotalCuenta + propinaCuenta
        let totalConIva = TotalCuenta+IVA
        let totalConTodo = TotalCuenta+IVA+propinaCuenta

        //pago por comensal
        let pagoPorComensal = totalConTodo/Double(TotalComensales)
        
        totalPropinaOut.text = String(format:"%.2f",totalConPropina)
        propinaOut.text = String(format:"%.2f",propinaCuenta)
        subtotalOut.text = String(format:"%.2f",TotalCuenta)
        ivaOut.text = String(format:"%.2f",IVA)
        totalIvaOut.text = String(format:"%.2f",totalConIva)
        totalTotalout.text = String(format:"%.2f",totalConTodo)
        totalComensalOut.text = String(format:"%.2f",pagoPorComensal)
        
        
        
        
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
