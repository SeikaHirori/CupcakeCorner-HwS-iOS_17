//
//  ContentView.swift
//  CupcakeCorner-HwS-iOS_17
//
//  Created by Seika Hirori on 1/16/24.
//

import SwiftUI

struct ContentView: View {
    @State private var results: [Result] = [Result]()
    
    var body: some View {
        List(results, id: \.trackId) { item in
            VStack(alignment: .leading) {
                Text(item.trackName)
                    .font(.headline)
                Text(item.collectionName)
            }
        }
        .task {
            await loadData()
        }
    }
    
    func loadData() async {
        print("Trying to load load")
        
        let iTunesDatabase: String = "https://itunes.apple.com/search?term=taylor+swift&entity=song"
        guard let url = URL(string: iTunesDatabase) else {
            print("Invalid URL")
            return
        }
        
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            if let decodedResponse = try? JSONDecoder().decode(Response.self, from: data) {
                results = decodedResponse.results
            }
        } catch {
            print("Invalid data")
        }
        
        print("Finish loading.")
    }
}

#Preview {
    ContentView()
}
