//
//  NetworkManager.swift
//  H4XOR News
//
//  Created by Adriancys Jesus Villegas Toro on 30/12/21.
//

import Foundation
//ObservableObject es Un tipo de objeto con un editor(@Published) que emite antes de que el objeto haya cambiado.
class NetworkManager: ObservableObject{
    
   @Published var post = [Posts]()
    
    func fetchData(){
        if let url = URL(string: "http://hn.algolia.com/api/v1/search?tags=front_page"){
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { data, response, error in
                if error == nil {
                    let decoder = JSONDecoder()
                    if let safeData = data {
                        do{
                           let result = try decoder.decode(Results.self, from: safeData )
//                            para evitar la demora en la carga de los datos utilizamos
                            DispatchQueue.main.async {
                                self.post = result.hits
                            }
                            
                        }catch{
                            print(error)
                        }
                    }
                }
            }
            task.resume()
        }
    }
}
