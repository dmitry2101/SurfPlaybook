//
//  Playbook.swift
//  SurfPlaybook
//
//  Created by Александр Чаусов on 13.04.2021.
//  Copyright © 2021 Surf. All rights reserved.
//

import UIKit

public final class Playbook {

    public init() {}

    public func start(from window: UIWindow?) {
        let (view, _) = TestModuleConfigurator().configure()
        window?.rootViewController = view
    }

    public func sum(a: Int, b: Int) -> Int {
        print(L10n.Main.title)
        return a + b
    }

}
