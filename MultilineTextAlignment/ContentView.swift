//
//  ContentView.swift
//  MultilineTextAlignment
//
//  Created by D. Prameswara on 22/12/22.
//

import SwiftUI

struct ContentView: View {
    private var listAlignment: [TextAlignment] = [.leading, .center, .trailing]
    @State private var currentAlignment: TextAlignment = .center
    
    var body: some View {
        VStack {
            Picker("",selection: $currentAlignment) {
                ForEach(listAlignment, id: \.self) { align in
                    Text(String(describing: align))
                }
            }
            .pickerStyle(.segmented)
            
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam vitae elementum lorem, id pharetra metus.")
                .multilineTextAlignment(currentAlignment)
                .lineLimit(3)
                .frame(width: 200)
                .padding()
            Spacer()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
