//
//  ContentView.swift
//  Project1
//
//  Created by 余浩文 on 2020/12/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            Form {
                // 一个Form里最多展示10条数据，再多需要分组，使用Group组件可以分组
                Group {
                    Text("Hello World")
                    Text("Hello World")
                }
                Section {
                    Text("Hello World")
                }
                // Section组件会自动切分
                Section {
                    Text("Hello World")
                    Text("Hello World")
                }
            
            }
        }
        .navigationBarTitle(Text("SwiftUI"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
