//
//  ContentView.swift
//  CustomForm
//
//  Created by Геннадий Ведерников on 18.11.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            
            GeometryReader { geometry in
                let width = geometry.size.width
                let height = geometry.size.height
                let size = min(width, height)
                let middle = size / 2
                let nearLine = size * 0.1
                let farLine = size * 0.9
                
                
                //Креайтива 0%
                //Представим, что это бокал "Мартини"
                Path { path in
                    path.move(to: CGPoint(x: middle - nearLine, y: nearLine))
                    path.addLine(to: CGPoint(x: farLine, y: farLine))
                    path.addLine(to: CGPoint(x: nearLine, y: farLine))
                    path.addLine(to: CGPoint(x: middle + nearLine, y: nearLine))
                }
                .fill(LinearGradient(
                    colors: [.red, .blue],
                    startPoint: UnitPoint(x: 1, y: 0), endPoint: UnitPoint(x: 0, y: 1))
                )
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .frame(width: 200, height: 200)
    }
}
