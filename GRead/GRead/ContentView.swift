//
//  ContentView.swift
//  GRead
//
//  Created by Valentin Harenzhenkov on 19.09.22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .resizable()
                .frame(width: 180, height: 180)
                .foregroundColor(.accentColor)
            HStack {
                Text("Hello, world!")
                    .frame(height: 200)
                .background(.orange)
                GeometryReader { proxy in
                    let size = proxy.size
                    VStack {
                    Text("\(size.width)")
                    Text("\(size.height)")
                        
                        HStack {
                            Rectangle()
                                .frame(width: size.width * 0.3)
                            Rectangle()
                                .frame(width: size.width * 0.5)
                        }
                        HStack {
                            Rectangle()
                                .frame(width: size.width * 0.6)
                            Rectangle()
                                .frame(width: size.width * 0.2)
                        }
                    }.frame(maxWidth: .infinity, maxHeight: .infinity)
                }.background(.green)
            }
            Text("Hello, world!")
                .frame(height: 200)
            .background(.orange)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
