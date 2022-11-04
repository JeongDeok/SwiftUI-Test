//
//  LandmarkDetail.swift
//  swiftUI_Test
//
//  Created by 서정덕 on 2022/11/04.
//

import SwiftUI
import CoreLocation

struct LandmarkDetail: View {
    
    var landmark: Landmark
    
    @EnvironmentObject var modelData: ModelData
    
    var landmarkIndex: Int {
        modelData.landmarks.firstIndex(where: { $0.id == landmark.id })!
    }

    
    var body: some View {
        ZStack {
            Color.gray
                .ignoresSafeArea()
            ScrollView {
                MapView(coordinate: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
                    .frame(height: 400.0)
                    //뷰의 높이를 300으로 설정함
                    .ignoresSafeArea(edges: .top)
                    //아이폰의 세이프 에리어를 무시함 위에만
                    
                CircleImage(image: landmark.image)
                    .padding(.bottom, -250)
                    .offset(y: -230)
                    
                VStack(alignment: .leading){
                    
                        //alignment: 여기 안에 있는 모든 요소들에 왼쪽 정렬 적용
                    HStack {
                        Text(landmark.name)
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Color.red)
                        FavoriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
                    }
                        //글자 색
                    HStack {
                        Text(landmark.park)
                            .font(.subheadline)
                        Spacer()
                        //Spacer: 상위 뷰가 가지고 있는 모든 부분을 채움
                        Text(landmark.state)
                            .font(.subheadline)
                    }
                    Divider()
                    //가로로 긴 줄
                        .frame(height: 4)
                        //크기 설정
                        .overlay(.black)
                    
                    Text("about\(landmark.name)")
                        .font(.title2)
                    Text(landmark.description)
                    
                }
                .padding(.all)
                
            }
            .ignoresSafeArea()
            .navigationTitle(landmark.name)
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static let modelData = ModelData()

    static var previews: some View {
        LandmarkDetail(landmark: modelData.landmarks[0])
            .environmentObject(modelData)
    }
}
