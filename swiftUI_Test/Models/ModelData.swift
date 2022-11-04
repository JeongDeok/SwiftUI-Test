//
//  ModelData.swift
//  swiftUI_Test
//
//  Created by 서정덕 on 2022/11/03.
//  landmarkData.json데이터를 불러와서 Landmark 구조체배열에다가 저장함

import Foundation
import Combine

final class ModelData: ObservableObject {
    
    @Published var landmarks: [Landmark] = load("landmarkData.json")
    //Landmarks.swift에 있는 Landmark 구조체로 만든 배열
}

var landmarks: [Landmark] = load("landmarkData.json")
//Landmarks.swift에 있는 Landmark 구조체로 만든 배열

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data

    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }

    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }

    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
