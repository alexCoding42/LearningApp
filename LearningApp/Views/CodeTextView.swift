//
//  CodeTextView.swift
//  LearningApp
//
//  Created by Alexandre Cisse on 28/03/2023.
//

import SwiftUI

struct CodeTextView: UIViewRepresentable {
    
    @EnvironmentObject var model: ContentModel
    
    func makeUIView(context: Context) -> some UITextView {
        let textView = UITextView()
        textView.isEditable = false
        
        return textView
    }
    
    func updateUIView(_ textView: UIViewType, context: Context) {
        
        // Set the attributed text for the lesson
        textView.attributedText = model.codeText
        
        // Scrollback to the top
        textView.scrollRectToVisible(
            CGRect(x: 0, y: 0, width: 1, height: 1),
            animated: false)
    }
}

struct CodeTextView_Previews: PreviewProvider {
    static var previews: some View {
        CodeTextView()
    }
}
