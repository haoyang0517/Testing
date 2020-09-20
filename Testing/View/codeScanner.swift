//
//  codeScanner.swift
//  Testing
//
//  Created by Hao Yang Yip on 14/09/2020.
//  Copyright © 2020 Hao Yang Yip. All rights reserved.
//
//
//import SwiftUI
//
//import CodeScanner
//struct ContentView: View {
//    @State var isPresentingScanner = false
//    @State var scannedCode: String?
//    @State private var selectedItem = 1
//     @State private var oldSelectedItem = 1
//    
//    var body: some View {
//        TabView(selection: $selectedItem){
//            Text("1")
//                .tabItem {
//                        Image(systemName: "house")
//                }.tag(1)
//            .onAppear {
//                self.oldSelectedItem = self.selectedItem
//            }
//            
//            Text("Add")
//                .tabItem { Image(systemName: "plus.circle") }
//                .tag(2)
//                .onAppear {
//                    self.isPresentingScanner.toggle()
//                    self.selectedItem = self.oldSelectedItem
//                }
//            
//            Text("3")
//                .tabItem {
//                    Image(systemName: "calendar")
//                }.tag(3)
//            .onAppear {
//                self.oldSelectedItem = self.selectedItem
//            }
//        }
//        .sheet(isPresented: $isPresentingScanner) {
//            self.scannerSheet
//        }
//        .accentColor(Color.orange)
//        .navigationBarBackButtonHidden(true)
//        .navigationBarHidden(true)
//        
//    }
//    
//    var scannerSheet : some View {
//        CodeScannerView(
//            codeTypes: [.qr],
//            completion: { result in
//                if case let .success(code) = result {
//                    self.scannedCode = code
//                    self.isPresentingScanner = false
//                }
//            }
//        )
//    }
//}
//struct NextView : View {
//    var body : some View {
//        Text("Second")
//    }
//}
