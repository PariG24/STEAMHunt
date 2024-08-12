//
//  JournalView.swift
//  STEAM Hunt APP
//
//  Created by Pari Gulati on 8/18/23.
//
import SwiftUI

struct JournalView: View {
    @State var showImagePicker: Bool = false
    @StateObject var imageData = ImageData()
    var body: some View {
            NavigationView {
                    VStack{
                    if imageData.imageNote.isEmpty {
                        Text("Tell us about your experiments!")
                            .multilineTextAlignment(.center)
                            .italic()
                            .foregroundColor(.gray)
                    } else {
                        NewJournalView()
                            .environmentObject(imageData)
                    }
                }
                .navigationTitle("Journal Here")
                
                .sheet(isPresented: $showImagePicker) {
                    ImagePicker(sourceType: .photoLibrary) {
                        image in
                        imageData.addNote(image: image, title: "Edit Title Here!", desc: "")
                    }
                }
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button{
                            showImagePicker.toggle()
                        } label: {
                            Label("Image", systemImage: "photo.on.rectangle.angled")
                        }
                    }
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button{
                            withAnimation{
                                imageData.resetUserData()
                            }
                        } label: {
                            Label("Trash", systemImage: "trash")
                        }
                        .tint(.red)
                    }
                }
                .environmentObject(imageData)
            }
    }
    
    struct JournalView_Previews: PreviewProvider {
        static var previews: some View {
            JournalView()
        }
    }
}

