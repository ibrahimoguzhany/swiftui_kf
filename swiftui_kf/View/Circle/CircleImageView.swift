//
//  CircleImageView.swift
//  swiftUI_s0e1
//
//  Created by İbrahim Oğuzhan Yılmaz on 30.10.2021.
//

import SwiftUI
import Kingfisher

struct CircleImageView: View {
    let title: String
    let imageUrl: String
    
    
    var body: some View {
        VStack {
            KFImage(URL(string: imageUrl)).fade(duration: 2).resizable().clipShape(Circle()).shadow(radius: 50)
            Text(title).bold().italic()
        }
    }
}

struct CircleImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircleImageView(title: "asdasd",imageUrl: "https://picsum.photos/id/237/200/300").frame(width: 400, height: 400 , alignment: .center)
        
    }
}
