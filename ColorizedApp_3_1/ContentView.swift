//
//  ContentView.swift
//  ColorizedApp_3_1
//
//  Created by Михаил Куприянов on 17.02.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var redSliderValue = Double.random(in: 0...255)
    @State private var greenSliderValue = Double.random(in: 0...255)
    @State private var blueSliderValue = Double.random(in: 0...255)
//    @Binding var value: Double
//    var value = 2
    
    var body: some View {
        ZStack {
            Color(.blue)
                .ignoresSafeArea()
            VStack {
                Rectangle()
                    .fill(Color(red: redSliderValue/255, green: greenSliderValue/255, blue: blueSliderValue/255))
                    .cornerRadius(10)
                    .frame(height: 150)
                    .padding()
                SliderView(value: $redSliderValue, color: .red)
                SliderView(value: $greenSliderValue, color: .green)
                SliderView(value: $blueSliderValue, color: .blue)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct ColorSliderView: View {
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
