//
//  ContentView.swift
//  UmbrellaApp
//
//  Created by Yusuke Kita on 5/2/20.
//  Copyright © 2020 kitasuke. All rights reserved.
//

import SwiftUI
import UmbrellaCore
import UmbrellaEntity

struct Empty: EmptyValue, EmptySubject {
    var value: Google_Protobuf_Empty { return .init() }
    var subject: PublishSubject<Google_Protobuf_Empty> { return .init() }
}

struct ContentView: View {
    var body: some View {
        Text("Hello, World!")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
