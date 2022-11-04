//
//  CircleImage.swift
//  swiftUI_Test
//
//  Created by 서정덕 on 2022/11/03.
//

import SwiftUI

struct CircleImage: View {

    var image: Image

    var body: some View {
        image
            .resizable(resizingMode: .stretch)
        //파일이름은 에셋에 있는 파일이름이랑 똑같이
            .clipShape(Circle())
            .shadow(radius: 50)
            .scaledToFit() // 크기 바뀌어도 비율 유지

            .overlay{
                Circle().stroke(.white, lineWidth: 10)
            }
            .frame(height: 300)


    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("turtlerock"))
//        CircleImage()
    }
}
//import SwiftUI
//
//struct CircleImage: View {
//    var image: Image
//
//    var body: some View {
//        image
//            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
//            .overlay {
//                Circle().stroke(.white, lineWidth: 4)
//            }
//            .shadow(radius: 7)
//    }
//}
//
//struct CircleImage_Previews: PreviewProvider {
//    static var previews: some View {
//        CircleImage(image: Image("turtlerock"))
//    }
//}

