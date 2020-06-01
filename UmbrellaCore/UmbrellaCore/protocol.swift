//
//  main.swift
//  UmbrellaCore
//
//  Created by Yusuke Kita on 5/30/20.
//  Copyright © 2020 kitasuke. All rights reserved.
//

import Foundation

public protocol EmptySubject {
    var subject: PublishSubject<Google_Protobuf_Empty> { get }
}
