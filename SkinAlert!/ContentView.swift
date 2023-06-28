//
//  ContentView.swift
//  SkinAlert!
//
//  Created by Anahita Rismani on 26.06.2023.
//

import SwiftUI





struct ContentView: View {
    
    
    

    
    
  var body: some View {
      
      
     
    NavigationStack {
      ZStack {
        Color("pastelPink")
              .ignoresSafeArea()
        VStack {
          Text("Skin Alert!")
                .font(.custom(
                    "Times New Roman", size: 40))
                .foregroundColor(Color("white"))
                
            // hello
            Spacer()
                .frame(height: 15)
            NavigationLink(destination: mainpage()) {
                Text("[START]")
                    .foregroundColor(Color("white"))
                    
            }
            

            }
          }
        
        }
      }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
