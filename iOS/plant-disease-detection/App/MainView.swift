//
//  MainView.swift
//  plant-disease-detection
//
//  Created by Umut Ulaş Demir on 11.06.2024.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            
            CameraView()
                .tabItem {
                    Image(systemName: "camera")
                    Text("Camera")
                }
            
            SavedDiseasesView()
                .tabItem {
                    Image(systemName: "folder")
                    Text("Saved Diseases")
                }
        }
    }
}
