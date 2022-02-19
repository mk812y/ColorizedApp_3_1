//
//  SliderView.swift
//  ColorizedApp_3_1
//
//  Created by Михаил Куприянов on 19.02.2022.
//

import SwiftUI

struct SliderView: View {
    
    
    @Binding var value: Double
    let color: Color

    var body: some View {
        HStack {
            Text("0").foregroundColor(color)
            Slider(value: $value, in: 0...255, step: 1)
            Text("\(lround(value))").foregroundColor(color)
        }
        .padding(.horizontal)
    }
}
