//
//  CircleImageView.swift
//  swiftUI_s0e1
//
//  Created by İbrahim Oğuzhan Yılmaz on 30.10.2021.
//

import SwiftUI

struct CircleImageView: View {
    let title: String
    let imageUrl: String
    
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct CircleImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircleImageView(title: "asdasd",imageUrl: "DASDSA").fixedSize()
    }
}
