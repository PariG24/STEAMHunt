//
//  NoteDetailView.swift
//  STEAM Hunt APP
//
//  Created by Pari Gulati on 9/12/23.
//

import SwiftUI

struct NoteDetailView: View {
    @EnvironmentObject var imageData: ImageData
    @State var note: ImageNote
    @Environment(\.presentationMode) var presentationMode
    @State private var isSharing = false // Add a state variable to track sharing
    
    var body: some View {
        Form {
            Section {
                HStack {
                    Spacer()
                    Image(uiImage: UIImage(data: note.image)!)
                        .resizable()
                        .frame(width: 300, height: 300, alignment: .center)
                    Spacer()
                }
                TextField("Title", text: $note.title)
                    .textSelection(.enabled)
                    .onTapGesture {
                        note.title = ""
                    }
                ZStack {
                    TextEditor(text: $note.description)
                        .textSelection(.enabled)
                        .frame(height: 200)
                    VStack {
                        Spacer()
                        HStack{
                            Spacer()
                            Text("\(note.description.count)/200")
                                .foregroundColor(.gray)
                                .padding()
                        }
                    }
                }
                VStack {
                    Spacer()
                    Button("Confirm changes") {
                        imageData.editNote(id: note.id, title: note.title, description: note.description)
                        presentationMode.wrappedValue.dismiss()
                    }
                    Spacer()
                }
                    VStack {
                        Spacer()
                        Button("Share") {
                            isSharing = true // Set the sharing flag to true when the Share button is tapped
                        }
                        Spacer()
                    }
            }
            .sheet(isPresented: $isSharing) {
                // Create a share sheet when isSharing is true
                ShareSheet(activityItems: [note.title, note.description, UIImage(data: note.image)!])
            }
        }
    }
}

struct ShareSheet: UIViewControllerRepresentable {
    var activityItems: [Any]
    
    func makeUIViewController(context: Context) -> UIActivityViewController {
        let activityVC = UIActivityViewController(activityItems: activityItems, applicationActivities: nil)
        return activityVC
    }
    
    func updateUIViewController(_ uiViewController: UIActivityViewController, context: Context) {
        // Update the view controller if needed
    }
}

struct NoteDetailView_Previews: PreviewProvider {
    static var previews: some View {
        let tempImage = UIImage(systemName: "map")?.pngData()
        
        NoteDetailView(note: ImageNote(id: UUID(), image: tempImage!, title: "Test", description: "Test Description"))
            .environmentObject(ImageData())
    }
    
}










/*import SwiftUI

struct NoteDetailView: View {
    @EnvironmentObject var imageData: ImageData
    @State var note: ImageNote
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        Form {
                Section {
                    HStack {
                        Spacer()
                        Image(uiImage: UIImage(data: note.image)!)
                            .resizable()
                            .frame(width: 300, height: 300, alignment: .center)
                        Spacer()
                    }
                    TextField("Title", text: $note.title)
                        .textSelection(.enabled)
                        .onTapGesture {
                            note.title = ""
                        }
                    ZStack {
                        TextEditor(text: $note.description)
                            .textSelection(.enabled)
                            .frame(height: 200)
                        VStack {
                            Spacer()
                            HStack{
                                Spacer()
                                Text("\(note.description.count)/200")
                                    .foregroundColor(.gray)
                                    .padding()
                            }
                        }
                    }
                    HStack {
                        Spacer()
                        Button("Confirm changes") {
                            imageData.editNote(id: note.id, title: note.title, description: note.description)
                            presentationMode.wrappedValue.dismiss()
                        }
                        Spacer()
                        
                    /*HStack {
                        NavigationLink(destination: ExampleView()) {
                            Text("Confirm Changes")*/
                        /*Spacer()
                        Button("Confirm Changes") {
                            self.imageData.editNote(id: note.id, title: note.title, description: note.description)
                            presentationMode.wrappedValue.dismiss()
                        }
                        Spacer()*/
                    }
                }
        }
        }
    }


struct NoteDetailView_Previews: PreviewProvider {
    static var previews: some View {
        let tempImage = UIImage(systemName: "map")?.pngData()
        
        NoteDetailView(note: ImageNote(id: UUID(), image: tempImage!, title: "Test", description: "Test Description"))
            .environmentObject(ImageData())
    }
    
}*/

