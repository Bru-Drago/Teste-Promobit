//
//  ErrorMsg.swift
//  TestePromobit
//
//  Created by Bruna Fernanda Drago on 18/10/20.
//

import Foundation

enum APIError : String , Error {
    case invalidResponse = "Verifique sua conexão."
    case emptyData = "Não encontramos nenhum contato."
    case invalidData = "Um erro foi encontrado"
    case emptyField = "Preenchimento obrigatório"
    
}
