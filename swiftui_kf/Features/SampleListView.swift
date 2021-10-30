//
//  SampleListView.swift
//  swiftui_kf
//
//  Created by İbrahim Oğuzhan Yılmaz on 30.10.2021.
//

import SwiftUI

struct SampleListView: View {
    
    private let items: Array<String> = [
        "chevron.right",
        "chevron.left",
        "chevron.up",
        "chevron.left"
    ]
    
    
    
    
    var body: some View {
            List{
                Section(header: Text("Header").font(.largeTitle), content: {
                    HStack{
                        Image(systemName: "person.crop.circle")
                        Text("Profile")
                        Spacer()
                        Image(systemName: "chevron.right")
                    }
                    
                    Text("Hello")
                    Text("Hello")
                })
                
                HStack{
                    Image(systemName: "person.crop.circle")
                    Text("Profile")
                    Spacer()
                    Image(systemName: "chevron.right")
                }
                Text("Hello")
                HStack {
                    ForEach(items, id: \.self) {
                        (item) in Image(systemName: item)
                        
                    }
                }
                
                
                
            }.listStyle(GroupedListStyle.init())
                
    }
}

struct SampleListView_Previews: PreviewProvider {
    static var previews: some View {
        SampleListView()
    }
}


