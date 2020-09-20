////
////  select profile.swift
////  Testing
////
////  Created by Hao Yang Yip on 14/09/2020.
////  Copyright © 2020 Hao Yang Yip. All rights reserved.
////
//
//import SwiftUI
//
//struct ContentView: View {
//
//    @State var isShowPicker: Bool = false
//    @State var image: Image? = Image("profile")
//
//    var body: some View {
//        NavigationView {
//            ZStack {
//                VStack {
//                    image?
//                        .resizable()
//                        .clipShape(Circle())
//                        .frame(width: 150, height: 150)
//                        .scaledToFit()
//                        .onTapGesture {
//                            self.isShowPicker.toggle()
//                    }
//                    Spacer()
//                }
//            }
//            .sheet(isPresented: $isShowPicker) {
//                ImagePicker(image: self.$image)
//            }
//            .navigationBarTitle("Pick Image")
//        }
//    }
//}
//
//
//struct ImagePicker: UIViewControllerRepresentable {
//
//    @Environment(\.presentationMode)
//    var presentationMode
//
//    @Binding var image: Image?
//
//    class Coordinator: NSObject, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
//
//        @Binding var presentationMode: PresentationMode
//        @Binding var image: Image?
//
//        init(presentationMode: Binding<PresentationMode>, image: Binding<Image?>) {
//            _presentationMode = presentationMode
//            _image = image
//        }
//
//        func imagePickerController(_ picker: UIImagePickerController,
//                                   didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
//            let uiImage = info[UIImagePickerController.InfoKey.originalImage] as! UIImage
//            image = Image(uiImage: uiImage)
//            print(image! as Any)
//            presentationMode.dismiss()
//
//        }
//
//        func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
//            presentationMode.dismiss()
//        }
//
//    }
//
//    func makeCoordinator() -> Coordinator {
//        return Coordinator(presentationMode: presentationMode, image: $image)
//    }
//
//    func makeUIViewController(context: UIViewControllerRepresentableContext<ImagePicker>) -> UIImagePickerController {
//        let picker = UIImagePickerController()
//        picker.delegate = context.coordinator
//        return picker
//    }
//
//    func updateUIViewController(_ uiViewController: UIImagePickerController,
//                                context: UIViewControllerRepresentableContext<ImagePicker>) {
//
//    }
//
//}
//
////import SwiftUI
////
////struct ContentView: View {
////
////    @State private var showImagePicker : Bool = false
////    @State private var image : Image? = Image("profile")
////
////    var body: some View {
////        NavigationView{
////
////            VStack {
////
////                image?.resizable().scaledToFit()
////                    .onTapGesture {
////                                            self.showImagePicker = true
////
////                }
////                Button("Open Camera"){
////                    self.showImagePicker = true
////                }.padding()
////                .foregroundColor(Color.white)
////                .background(Color.purple)
////                .cornerRadius(10)
////            }.sheet(isPresented: self.$showImagePicker){
////                PhotoCaptureView(showImagePicker: self.$showImagePicker, image: self.$image)
////            }
////
////            .navigationBarTitle(Text("Camera"))
////        }
////    }
////
////
////}
