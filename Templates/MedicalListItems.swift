//
//  MedicalListItems.swift
//  Login Screen
//
//  Created by MILLER, Maximilian on 02/01/2022.
//  Copyright © 2022 Balaji. All rights reserved.
//

import SwiftUI

struct MedicalListItems: View {
    
    @State var progressValue: Float = 0.0
    
    var body: some View {
        HStack {
            ZStack {
                ProgressBar(progress: self.$progressValue)
                    .frame(width: 55, height: 55, alignment: .center)
                    .padding(.trailing, 10)
                    .padding(.bottom, 5)
                    .onAppear() {
                        withAnimation(.easeInOut(duration: 2.0)) {
                            self.progressValue = 0.20
                        }
                    }
                Button (action: {
                    if (progressValue) < 1.0 {
                        self.progressValue += 0.10
                    } else {
                        progressValue -= 1.0
                    }
                }, label: {
                    Image("Profile")
                        .resizable()
                        .frame(width: 35, height: 35, alignment: .leading)
                        .clipShape(Circle())
                        .padding(.leading, 10)
                        .padding(.trailing, 20)
                        .padding(.bottom, 4)
                })
            }
            VStack {
                Text("Ideal Applicant")
                    .font(.title2.weight(.bold))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 3)
                Text("Learn the process of getting a major in this field and more ...")
                    .font(.footnote)
                    .padding(.leading, 3)
                    .lineLimit(2)
            }
        }
    }
}

struct ProgressBar: View {
    
    @Binding var progress: Float
    var color: Color = Color.green
    
    var body: some View {
        withAnimation(.easeInOut(duration: 2.0)) {
            ZStack {
                Circle()
                    .stroke(lineWidth: 3.0)
                    .opacity(0.2)
                    .foregroundColor(Color.gray)
                Circle()
                    .trim(from: 0.0, to: CGFloat(min(self.progress, 1.0)))
                    .stroke(style: StrokeStyle(lineWidth: 3.0, lineCap: .round, lineJoin: .round))
                    .foregroundColor(color)
                    .rotationEffect(Angle(degrees: 270))
            }
        }
    }
}

struct MedicalListItems_Previews: PreviewProvider {
    static var previews: some View {
        MedicalListItems()
    }
}
