//
//  ContentView.swift
//  APIKeysInPropertyLists
//
//  Created by Marlon Raskin on 2023-05-17.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
		  .onAppear {
			  print(TMDBServiceConstants.apiKey)
		  }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
