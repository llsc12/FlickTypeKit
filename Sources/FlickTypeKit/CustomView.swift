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
    private var title: LocalizedStringKey
    @Binding private var text: String
    
    public init(flicktype: State<Bool>, title: LocalizedStringKey, text: Binding<String>) {
        self._flicktype = flicktype
        self.title = title
        self._text = text
    }
    
    public var body: some View {
        if flicktype {
            FlickTypeTextEditor(title, text: $text, mode: .always)
        } else {
            TextField(title, text: $text)
                .clipShape(Capsule())
        }
    }
}

@available(watchOS 8.0, *)
struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        eggView()
    }
}

@available(watchOS 8.0, *)
struct eggView: View {
    @State var egg = false
    var body: some View {
        VStack {
            Button("Egg") {
                egg.toggle()
            }
            FlickTypeTextField(flicktype: _egg, title: "Search...", text: .constant("hi there"))
        }
    }
}
#endif
