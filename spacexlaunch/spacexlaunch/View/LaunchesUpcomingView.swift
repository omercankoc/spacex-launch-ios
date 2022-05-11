//
//  LaunchesUpcomingView.swift
//  spacexlaunch
//
//  Created by Ömer Can Koç on 11.05.2022.
//

import SwiftUI
import Kingfisher

struct LaunchesUpcomingView: View {
    private var presenter : LaunchesUpcomingPresenter!
    
    init(presenter : LaunchesUpcomingPresenter) {
        self.presenter = presenter
    }
    
    var body: some View {
        KFImage(URL(string: self.presenter.image))
            .cancelOnDisappear(true)
            .resizable()
            .frame(width: 128, height: 128, alignment: .center)
    }    
}
