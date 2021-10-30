//
//  ContentView.swift
//  swiftui_kf
//
//  Created by İbrahim Oğuzhan Yılmaz on 30.10.2021.
//

import SwiftUI
import Kingfisher



struct IconFieldView: View {
    
    var iconName: String = "Hello"
    @State var textFieldValue: String = ""
    
    var body: some View {
        VStack {
            TextField("Placeholder", text: $textFieldValue)		
            Text(textFieldValue).bold().font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
            
            
            Image(systemName: textFieldValue.lowercased())
        }
    }
}

struct ContentView: View {
    
    private let imageUrl: String = "https://picsum.photos/id/237/200/300"
    
    var body: some View {
        CircleImageView(title: "Kabus", imageUrl: "https://picsum.photos/id/237/200/300").frame(width: 400, height: 400, alignment: .center)
       
    }
    
    fileprivate func groupViews() -> some View {
        return VStack {
            //             MARK: Login View
            //        TODO: Fix user name
            Group{
                VStack{
                    Text("Hello")
                        .accentColor(.blue)
                        .font(.headline)
                    
                }.frame(width: 300, height: 300, alignment: .center).background(Color("color_random")).shadow(radius: 10)
            }
            // MARK: Register View
            Group{
                VStack{
                    Text("Hello")
                    
                    
                }
            }
            
        }
    }
    
    
    
    fileprivate func demoView() -> some View {
        return VStack(alignment: .center){
            Rectangle().frame(width: 100, height: 100, alignment: .center)
            Circle().foregroundColor(.red).frame( height: 100, alignment: .center)
            Text("Sample1")
            Text("Sample2")
            Text("Sample3")
            Spacer()
            HStack(){
                
                RoundedRectangle(cornerRadius: 25).frame( height: 100, alignment: .center)
                
                ZStack(){
                    Circle()
                    Text("Hello").font(.largeTitle).foregroundColor(.white)
                    
                }.frame( height: 100, alignment: .center)
                
            }.frame(height: 500, alignment: .top)
            
        }
    }
    
    fileprivate func sampleHorizontalView() -> some View {
        return HStack{
            Spacer().frame(width: 100, alignment: .center)
            Text("Hello, world!")
                .padding()
            Text("asddas").padding()
            Color.red
            Spacer().frame(width: 100, alignment: .center)
        }
    }
    
    fileprivate func sampleVertivalView() -> some View {
        return VStack{
            Spacer().frame(width: 100, alignment: .center)
            Text("Hello, world!")
                .padding()
            Text("asddas").padding()
            Color.red
            Spacer().frame(width: 100, alignment: .center)
        }
    }
    
    fileprivate func sampleStackView() -> some View {
        return ZStack(alignment: Alignment.bottom){
            Color.red
            Spacer().frame(width: 100, alignment: .center)
            Text("sadsa")
                .padding()
            Text("ASddas")
                .padding()
            Text("sadsa")
                .padding()
            Text("ASddas")
                .padding()
            Spacer().frame(width: 100, alignment: .center)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
