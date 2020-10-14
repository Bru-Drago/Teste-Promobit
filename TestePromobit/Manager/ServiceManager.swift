//
//  ServiceManager.swift
//  TestePromobit
//
//  Created by Bruna Fernanda Drago on 14/10/20.
//

import Foundation
import Alamofire

class ServiceManager {
    
    static let shared = ServiceManager()
    private init() {}
    let baseURL = "https://gist.githubusercontent.com/rnas/c925888cb8f52306c82fc0dfc9a3fd79/raw/fb98b80d2a7e8d9dc0c4369650f518fa68f1e407/contacts.json"
    
    typealias APIResponse = ([ContactData]?,String?)->Void
    
    func getContacts(completion: @escaping APIResponse) {
        
        guard let url = URL(string: baseURL)else {return}
        
        AF.request(url, method: .get, parameters: nil, encoding: URLEncoding.default, headers: nil, interceptor: nil).validate().response { (responseData) in
            
            if let _ = responseData.error {
                completion(nil,"Erro encontrado")
                return
            }
            guard let data = responseData.data else { return}
            do {
                let contacts = try JSONDecoder().decode([ContactData].self, from: data)
                print(contacts)
                completion(contacts,nil)
                
            }catch {
                completion(nil,"Erro na call")
            }
        }
          
        }
    }
    
//switch responseData.result {
//
//            case .success:
//                guard let data = responseData.data else { return}
//                do {
//                    let contacts = try JSONDecoder().decode([ContactData].self, from: data)
//                    completion(contacts,nil)
//                    print(contacts)
//                }catch {
//                    completion(nil,"Erro no decode")
//                }
//
//            case .failure:
//                completion(nil,"Erro nos dados do servidor")
//            }
