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
        
        let postURL = "https://rnlrucrjkb.execute-api.us-east-1.amazonaws.com/default/post2getPromobit"
        
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
        
        func sendPostRequest(_ parameters :[String:String],completion: (Error?)->Void){
            
            guard let url = URL(string: postURL)else { return}
            
            AF.request(url, method: .post, parameters: parameters, encoder: JSONParameterEncoder.default).validate(statusCode: 200...300).validate(contentType: ["application/json"])
                .response { (responseJson) in
                    switch responseJson.result{
                    case .success(let data):
                        print(data)
                        debugPrint("esta é a response \(responseJson)")
                    case .failure:
                        debugPrint(responseJson)
                        print(Error.self)
                    }
                    
                }
            
        }
        
    }
    
    
