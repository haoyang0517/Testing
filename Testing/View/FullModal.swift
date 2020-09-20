//
//  FullModal.swift
//  Testing
//
//  Created by Hao Yang Yip on 20/09/2020.
//  Copyright © 2020 Hao Yang Yip. All rights reserved.
//

import SwiftUI

struct FullModal<Content:View>: View {
    @Binding var isPresented:Bool
    var backgroundColor:UIColor?
    var buttonColor:UIColor?
    let modalView: () -> Content
    let thisWindow = UIApplication.shared.windows.filter{$0.isKeyWindow}.first
    var body: some View {
        ZStack {
            Color((backgroundColor == nil ?  UIColor.white : backgroundColor)!)
            VStack {
                HStack {
                    Button(action: {
                        withAnimation {
                            self.isPresented = false
                        }
                    }) {
                        Image(systemName:"xmark.circle.fill")
                            .foregroundColor(buttonColor == nil ? Color(UIColor.orange) : Color(buttonColor!))
                    }
                    Spacer()

                }
                .padding(.horizontal)
                modalView()
            }.padding(.top,thisWindow?.safeAreaInsets.top)
            Spacer()
        }
        .offset(x: 0, y: isPresented ? 0 : thisWindow?.frame.height ?? 0)
        .edgesIgnoringSafeArea(.all)
    }
}
struct ModalView: View {
    var body: some View {
        NavigationView {
            VStack {
                // This is your modal content here
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.green)
                    .frame(width: 200, height: 200)
                // The spacer is to push up the FullModal close button
                Text("testing 123")
                Spacer()
            }.navigationBarTitle("test", displayMode: .inline)
            .navigationBarItems(leading: Image(systemName:"xmark.circle.fill"))
                                    
        }

    }
}
struct ContentView: View {
    @State private var isPresented = false
    var body: some View {
        ZStack {
            NavigationView {
                Button("Show Modal") {
                    withAnimation {
                        self.isPresented = true
                    }
                }
            .navigationBarTitle("Full Screen Modal")
            }
            FullModal(isPresented: $isPresented) {
                   ModalView()
            }
            }
        }
    }

