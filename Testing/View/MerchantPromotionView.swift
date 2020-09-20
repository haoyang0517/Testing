//
//  MerchantPromotionView.swift
//  Proj1
//
//  Created by Hao Yang Yip on 18/08/2020.
//  Copyright © 2020 Hao Yang Yip. All rights reserved.
//

import SwiftUI

struct MerchantPromotionView: View {
    @ObservedObject var datas = MerchantPromotionJson()
    
    var body: some View {
        
        List(datas.json){ item in
            
            
            VStack(alignment: .leading){
                HStack{
                    Image("\(item.img)")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 50, height: 50)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.white, lineWidth: 2))

                        .padding(3)
                    VStack(alignment: .leading){
                        Text(item.shop)
                            .font(.headline)
                        Text(item.date)
                            .font(.subheadline)
                    }
                }
                Text(item.msg)
                    .font(.body)
                Image(item.img)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipped()
                    .cornerRadius(30)
                    .padding(.bottom, 20)
            }
            
        }
    }
}

struct MerchantPromotionView_Previews: PreviewProvider {
    static var previews: some View {
        MerchantPromotionView()
    }
}

class MerchantPromotionJson: ObservableObject {
    @Published var json = [Promotion]()
    
    init() {
        load()
    }
    func load() {
        let path = Bundle.main.path(forResource: "merchantPromotionData", ofType: "json")
        let url = URL(fileURLWithPath: path!)
        URLSession.shared.dataTask(with: url) { (data, response, error) in do{
            if let data = data {
                let json = try JSONDecoder().decode([Promotion].self, from: data)
                DispatchQueue.main.sync {
                    self.json = json
                }
            } else {
                print("No data")
            }
        } catch{
            print(error)
            }
        }.resume()
    }
    
}
