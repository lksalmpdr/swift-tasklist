//
//  CadastroViewController.swift
//  Lista de Atividades
//
//  Created by Pedro Lucas de Almeida on 23/09/21.
//

import UIKit

class CadastroViewController: UIViewController {

    
    @IBOutlet weak var novaTarefa: UITextField!
    
    @IBAction func cadastrarNovaTarefa(_ sender: Any) {
        if let textoNovaTarefa = novaTarefa.text{
            let tarefa = TarefaUserDefaults()
            tarefa.salvar(textoNovaTarefa)
            novaTarefa.text = ""
            navigationController?.popViewController(animated: true)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }

}
