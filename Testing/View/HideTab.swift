////
////  HideTab.swift
////  Testing
////
////  Created by Hao Yang Yip on 14/09/2020.
////  Copyright © 2020 Hao Yang Yip. All rights reserved.
////
//
//import SwiftUI
//import UIKit
//
//struct ContentView: View {
//    @State private var tabSelection = 1
//
//    var body: some View {
//        TabView(selection: $tabSelection) {
//            NavigationView{FirstView()}.tabItem {
//                Text("1")
//            }
//            .tag(1)
//            SecondView().tabItem {
//                Text("2")
//            }
//            .tag(2)
//        }
//
//
//    }
//}
//struct FirstView: View {
//    @State var isPresent = false
//    var body: some View {
//
//            VStack{
//                Text("test")
//                    .onTapGesture(perform: {
//                        self.isPresent.toggle()
//                    })
//            }.sheet(isPresented: $isPresent, content: {
//                DetailView()
//            })
//     }
//}
//
//
//struct DetailView: View {
//    var body: some View {
//        NavigationView{
//            VStack{
//                NavigationLink(destination: DetailView2()) {
//                    Text("Go to detail detail")
//                }
//            }
//        }
//
////        .onAppear(perform: Tool.hiddenTabBar)
////        .onDisappear(perform: Tool.showTabBar)
//
//    }
//}
//struct DetailView2: View {
//
//    var body: some View{
//        VStack{
//            NavigationLink(destination: FirstView()) {
//                Text("Go to First")
//            }        }
//    .onAppear(perform: Tool.hiddenTabBar)
//    }
//
//}
//struct SecondView: View {
//    var body: some View {
//        NavigationView{
//            VStack{
//                NavigationLink(destination: DetailView()) {
//                    Text("Go to details")
//                }
//            }
//        }.onAppear(perform: Tool.showTabBar)
//            .onDisappear(perform: Tool.hiddenTabBar)
//    }
//}
//extension UIView {
//
//    func allSubviews() -> [UIView] {
//        var res = self.subviews
//        for subview in self.subviews {
//            let riz = subview.allSubviews()
//            res.append(contentsOf: riz)
//        }
//        return res
//    }
//}
//
//struct Tool {
//    static func showTabBar() {
//        UIApplication.shared.windows.first(where: { $0.isKeyWindow })?.allSubviews().forEach({ (v) in
//            if let view = v as? UITabBar {
//                view.isHidden = false
//            }
//        })
//    }
//
//    static func hiddenTabBar() {
//        UIApplication.shared.windows.first(where: { $0.isKeyWindow })?.allSubviews().forEach({ (v) in
//            if let view = v as? UITabBar {
//                view.isHidden = true
//            }
//        })
//    }
//}
//
//struct ShowTabBar: ViewModifier {
//    func body(content: Content) -> some View {
//        return content.padding(.zero).onAppear {
//            Tool.showTabBar()
//        }
//    }
//}
//struct HiddenTabBar: ViewModifier {
//    func body(content: Content) -> some View {
//        return content.padding(.zero).onAppear {
//            Tool.hiddenTabBar()
//        }
//    }
//}
//
//extension View {
//    func showTabBar() -> some View {
//        return self.modifier(ShowTabBar())
//    }
//    func hiddenTabBar() -> some View {
//        return self.modifier(HiddenTabBar())
//    }
//}
