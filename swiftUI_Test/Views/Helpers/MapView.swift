//
//  MapView.swift
//  swiftUI_Test
//
//  Created by 서정덕 on 2022/11/03.
//

import SwiftUI
import MapKit


struct MapView: View {
    
    var coordinate: CLLocationCoordinate2D
    
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude:  34.011_286, longitude: -116.166_868),
        //죄표상의 위치 위도경도 입력
        span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        //지도에 표시되는 너비 설정
    )
    
    
    
    var body: some View {
        Map(coordinateRegion: $region)
            .onAppear{
                setRegion(coordinate)
            }
    }
    
    private func setRegion(_ coordinate: CLLocationCoordinate2D) {
        region = MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
    }
}
