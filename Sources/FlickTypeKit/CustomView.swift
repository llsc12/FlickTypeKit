//
//  SwiftUIView.swift
//  
//
//  Created by Lakhan Lothiyi on 07/08/2022.
//

#if os(watchOS)
import SwiftUI

@available(watchOS 8.0, *)
public struct FlickTypeTextField: View {
    
    var flicktype: Bool
    var title: LocalizedStringKey
    @Binding var text: String
    
    public var body: some View {
        if flicktype {
            FlickTypeTextEditor(title, text: $text, mode: .always)
        } else {
            TextField(title, text: $text)
        }
    }
}

@available(watchOS 8.0, *)
struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        FlickTypeTextField(flicktype: true, title: "Search...", text: .constant("hi there"))
    }
}
#endif
