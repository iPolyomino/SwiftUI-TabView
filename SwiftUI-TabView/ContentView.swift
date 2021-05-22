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
                Spacer()
                HStack{
                    Text("年齢")
                    Text("XXさい")
                }
                HStack{
                    Text("所属")
                    Text("関西学院")
                }
            }.tabItem {
                Text("萩倉タブ")
            }.tag(1)
            Text("福井")
                .tabItem {
                    Text("福井タブ")
                }.tag(2)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
