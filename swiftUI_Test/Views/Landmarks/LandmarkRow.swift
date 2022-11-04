//
//  LandmarkRow.swift
//  swiftUI_Test
//
//  Created by 서정덕 on 2022/11/03.
//  Landmarks.swift에 선언되어있는 Landmark 데이터 구조체로 테이블의 한 행을 만듦

import SwiftUI

struct LandmarkRow: View {
    
    var landmark: Landmark
    
    
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)

            Spacer()
            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .padding(.trailing)
                    .foregroundColor(.yellow)
            }
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    
    static var landmarks = ModelData().landmarks

    
    static var previews: some View {
        Group{
            LandmarkRow(landmark: landmarks[0])
            LandmarkRow(landmark: landmarks[1])
            //LandmarkRow를 초기화 하는 구문인데 변수를 초기화 해주지 않으면 오류 남
            //ModelData.swift 에 저장된 landmarks 배열 사용
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
