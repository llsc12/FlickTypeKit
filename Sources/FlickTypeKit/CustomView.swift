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
    
    @State private var flicktype: Bool
    @State private var title: LocalizedStringKey
    @Binding private var text: String
    
    public init(flicktype: State<Bool>, title: State<LocalizedStringKey>, text: Binding<String>) {
        self._flicktype = flicktype
        self._title = title
        self._text = text
    }
    
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
