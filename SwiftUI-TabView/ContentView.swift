//
//  ContentView.swift
//  SwiftUI-TabView
//
//  Created by 萩倉丈 on 2021/05/22.
//

import SwiftUI

struct ContentView: View {
    @State var selectedTag = 1
    
    var body: some View {
        TabView(selection: $selectedTag) {
            VStack {
                Spacer()
                Text("萩倉")
                    .font(.custom("HiraMinProN-W6", size: 100))
                Spacer()
                HStack{
                    Text("年齢")
                    Text("23歳")
                }
                HStack {
                    Text("所属")
                    Text("関西学院")
                }
                HStack {
                    Text("趣味")
                    Text("アマチュア無線、旅行、写真撮影")
                }
                Spacer()
                Text("プログラミング講座講師")
                    .font(.title)
                    .foregroundColor(Color.red)
            }.tabItem {
                Text("Mr. Hagikura")
            }.tag(1)
            VStack{
                Spacer()
                VStack {
                    Text("福井")
                    Text("昌則")
                }
                .font(.custom("HiraMinProN-W6", size: 100))
                Spacer()
                Text("徳島大学 高等教育研究センター 学修支援部門 EdTech推進班 准教授")
                Text("博士 (工学)・修士 (学校教育学)")
                Spacer()
                Text("プログラミング講座講師")
                    .font(.title)
                    .foregroundColor(Color.red)
            }
            .tabItem {
                Text("Dr. Fukui")
            }.tag(2)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
