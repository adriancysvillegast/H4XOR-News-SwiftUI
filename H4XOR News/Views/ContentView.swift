//
//  ContentView.swift
//  H4XOR News
//
//  Created by Adriancys Jesus Villegas Toro on 30/12/21.
//

import SwiftUI

struct ContentView: View {
    //    aqui se crea el objeto y al ser observe se deberian de mostrar cambios a tiempo real
    @ObservedObject var networkManager = NetworkManager()
    
    
    var body: some View {
        
        NavigationView {
            //            this method list is so good
            //            el metodo list que se usa es el que solo se le asigna el dato y un identificador que es eliminado y se transforma en la actual estructura
            
            List(networkManager.post){ post in
                //                navigation es el boton para dirigirme a la otra vista
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
                
            }
            .navigationTitle("H4XOR News")
        }
        .onAppear {
            networkManager.fetchData()
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


//let post = [
//Posts(id: "1", title: "hello"),
//Posts(id: "2", title: "hallo"),
//Posts(id: "3", title: "hola"),
//Posts(id: "4", title: "ciao")
//]


