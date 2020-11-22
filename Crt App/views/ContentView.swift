//
//  ContentView.swift
//  Crt App
//
//  Created by Hossam on 11/21/20.
//

import SwiftUI

var sizes = ["S","M","L","X","XX","XL","XXL"]

struct ContentView: View {
    
    @State var index = 0
    @State var selectedSize = "S"
    @State var count = 0
    
    
    var body: some View {
        VStack {
            
            VStack{
            HStack{
                
                Button(action: {}) {
                    Image(systemName: "arrow.left")
                        .font(.system(size:24))
                        .foregroundColor(Color("txt"))
                        .padding(.trailing)
                }
                
                Spacer(minLength: 0)
                
                Button(action: {}) {
                    Image(systemName: "suit.heart.fill")
                        .foregroundColor(.white)
                        .padding(10)
                        .background(Color("Color"))
                        .clipShape(Circle())
                        .shadow(radius: 4)
                }
                
            }
            .padding([.horizontal,.top])
                
                HStack(spacing: 15) {
                    
                    VStack(alignment: .leading, spacing: 12) {
                        
                        Text("Brand")
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                            .foregroundColor(Color("txt"))
                        
                        Text("Moon")
                            .foregroundColor(Color("txt"))
                        
                        Text("Code")
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                            .foregroundColor(Color("txt"))
                            .padding(.top,10)
                        
                        Text("Y24869")
                            .foregroundColor(Color("txt"))
                        
                        Text("Cotton")
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                            .foregroundColor(Color("txt"))
                            .padding(.top,10)
                        
                        Text("100 %")
                            .foregroundColor(Color("txt"))
                        
                        Text("Color")
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                            .foregroundColor(Color("txt"))
                            .padding(.top,10)
                        
                        
                        // Color Buttons...
                        
                        HStack(spacing: 12){
                            
                            Button(action: {
                                
                                index = 0
                                
                            }) {
                                
                                Circle()
                                    .fill(Color.yellow)
                                    .frame(width: index == 0 ? 30 : 20, height: index == 0 ? 30 : 20)
                            }
                            
                            Button(action: {
                                
                                index = 1
                                
                            }) {
                                
                                Circle()
                                    .fill(Color.green)
                                    .frame(width: index == 1 ? 30 : 20, height: index == 1 ? 30 : 20)
                            }
                            
                            Button(action: {
                                
                                index = 2
                                
                            }) {
                                
                                Circle()
                                    .fill(Color.orange)
                                    .frame(width: index == 2 ? 30 : 20, height: index == 2 ? 30 : 20)
                            }
                        }
                        .padding(.top,10)
                    
                    }
                    
                    Spacer(minLength: 0)
                    
                    // changing image based on color...
                    
                    Image(index == 0 ? "pic1" : (index == 1 ? "pic2" : "pic3"))
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(.leading)
                    
                }
                .padding()
            }
            
            // due to top edge is ignored...
            .padding(.top,UIApplication.shared.windows.first?.safeAreaInsets.top)
            .padding(.bottom,25)
            .background(Color("Color"))
            .clipShape(CHSape())
            
           
            if UIScreen.main.bounds.height < 750{
                
                ScrollView(.vertical, showsIndicators: false) {
                    
                    BottomView()
                }
            }
            else{
                
                BottomView()
            }
            
        }
        .edgesIgnoringSafeArea(.top)
    }
}

// custom bottom corner shape...

struct CHSape : Shape {
    
    func path(in rect: CGRect) -> Path {
        
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.bottomLeft,.bottomRight], cornerRadii: CGSize(width: UIScreen.main.bounds.height < 750 ? 30 : 45, height: UIScreen.main.bounds.height < 750 ? 30 : 45))
        
        return Path(path.cgPath)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
