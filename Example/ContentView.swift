//
//  ContentView.swift
//  Example
//
//  Created by Moi Gutierrez on 6/21/21.
//

import SwiftUI
import LocalConsole

let localConsoleManager = LCManager.shared

struct ContentView: View {

    @State var showConsole = false {
        didSet {
            localConsoleManager.isVisible = showConsole
        }
    }
    
    var body: some View {
    
        Button(action: {
            showConsole.toggle()
        }, label: {
            Text("\(showConsole ? "show":"hide") console")
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
