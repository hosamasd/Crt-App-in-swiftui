//
//  BottomView.swift
//  Crt App
//
//  Created by Hossam on 11/21/20.
//

import SwiftUI

struct BottomView: View {
    
    @State var selectedSize = "S"
    @State var count = 0
    
    var body: some View {
        HStack(spacing: 20){
            
            Text("T-Shirt")
                .font(.system(size: 35))
                .foregroundColor(.black)
            
            Spacer()
            
            Text("$ 899")
                .font(.system(size: 20))
                .foregroundColor(Color("Color1"))
                .overlay(
                
                    // strike effect..
                    
                    Rectangle()
                        .fill(Color("Color1"))
                        .frame(height: 2)
                )
            
            Text("$ 799")
                .font(.system(size: 25))
                .fontWeight(.bold)
                .foregroundColor(.black)
        }
        .padding()
        
        VStack(alignment: .leading, spacing: 12) {
            
            Text("Size")
                .fontWeight(.bold)
            
            HStack(spacing: 15){
                
                ForEach(sizes,id: \.self){i in
                    
                    Button(action: {
                        selectedSize = i
                    }) {
                        
                        Text("\(i)")
                            .font(UIScreen.main.bounds.height < 750 ? .caption : .body)
                            .foregroundColor(selectedSize == i ? .white : .black)
                            .padding(.vertical,8)
                            .padding(.horizontal,10)
                            .background(
                            
                                ZStack{
                                    
                                    RoundedRectangle(cornerRadius: 5)
                                        .fill(Color("Color1").opacity(selectedSize == i ? 1 : 0))
                                    
                                    RoundedRectangle(cornerRadius: 5)
                                        .stroke(Color("Color1"),lineWidth: 1)
                                }
                            )
                    }
                }
            }
            
            Text("About")
                .fontWeight(.bold)
                .padding(.top,10)
            
            Text("Mustard yellow printed waist length T-shirt, has a round neck, long sleeves with cut-out detail, high-low hem. 100% Original Products")
                .foregroundColor(.gray)
                .multilineTextAlignment(.leading)
        }
        .padding(.horizontal)
        
       
        HStack(spacing: 15){
            
            // cart buttons...
            
            Button(action: {
                
                count += 1
                
            }) {
                
                Image(systemName: "plus")
                    .font(.system(size: 20))
                    .foregroundColor(Color("Color1"))
                    .padding()
                    .background(Color.white)
                    .clipShape(Circle())
                    .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 5)
            }
            
            Text("\(count)")
                .font(.title)
                .fontWeight(.bold)
            
            Button(action: {
                
                if count > 1{
                    
                    count -= 1
                }
                
            }) {
                
                Image(systemName: "minus")
                    .font(.system(size: 26))
                    .foregroundColor(Color("Color1"))
                    .padding()
                    .background(Color.white)
                    .clipShape(Circle())
                    .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 5)
            }
            
            // add to cart...
            
            Spacer(minLength: 0)
            
            Button(action: {}) {
                
                Text("Add to Cart")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .padding(.vertical)
                    .padding(.horizontal,UIScreen.main.bounds.height < 750 ? 20 : 40)
                    .background(Color("Color1"))
                    .clipShape(Capsule())
            }
        }
        .padding(.horizontal)
        .padding(.vertical,30)
    }
}

struct BottomView_Previews: PreviewProvider {
    static var previews: some View {
        BottomView()
    }
}
