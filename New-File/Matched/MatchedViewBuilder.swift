//
//  MatchedViewBuilder.swift
//  Login Screen
//
//  Created by MILLER, Maximilian on 27/12/2021.
//  Copyright © 2021 Balaji. All rights reserved.
//

import SwiftUI

struct MatchedViewBuilder: View {
    
    @State private var show = false
    @Namespace private var namespace
    
    var body: some View {
        ZStack {
            if !show {
                MatchedViewO(namespace: namespace, show: $show)
            } else {
                MatchedViewN(namespace: namespace, show: $show)
            }
        }
        .onTapGesture {
            withAnimation (.spring(response: 0.7 , dampingFraction: 0.6)) {
                show.toggle()
            }
        }
    }
}

struct MatchedViewBuilder_Previews: PreviewProvider {
    static var previews: some View {
        MatchedViewBuilder()
    }
}
