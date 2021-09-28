//
//  TarefasUserDefaults.swift
//  Lista de Atividades
//
//  Created by Pedro Lucas de Almeida on 23/09/21.
//

import UIKit

class TarefaUserDefaults{
    let chave = "listaTarefa_"
    var tarefas: [String] = []
    func salvar(_ tarefa:String){
        //Recuperar o que ja estava salvo em UserDefaults
        tarefas = listar()
        //Salvar a nova tarefa
        tarefas.append(tarefa)
        UserDefaults.standard.set(tarefas, forKey: chave)
    }
    
    func remover(indice:Int) {
        tarefas = listar()
        tarefas.remove(at: indice)
        
        UserDefaults.standard.set(tarefas, forKey: chave)
    }
    
    func listar() -> Array<String>{
        let dados = UserDefaults.standard.object(forKey: chave)
        
        if dados != nil {
            return dados as! Array<String>
        }else{
            return []
        }
    }
}
