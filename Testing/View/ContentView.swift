
//struct ImagePicker : UIViewControllerRepresentable {
//
//    @Binding var isShown    : Bool
//    @Binding var image      : Image?
//
//    func updateUIViewController(_ uiViewController: UIImagePickerController, context: UIViewControllerRepresentableContext<ImagePicker>) {
//
//    }
//
//    func makeCoordinator() -> ImagePickerCordinator {
//        return ImagePickerCordinator(isShown: $isShown, image: $image)
//    }
//
//    func makeUIViewController(context: UIViewControllerRepresentableContext<ImagePicker>) -> UIImagePickerController {
//        let picker = UIImagePickerController()
//        picker.delegate = context.coordinator
//        return picker
//    }
//}
//class ImagePickerCordinator : NSObject, UINavigationControllerDelegate, UIImagePickerControllerDelegate{
//
//    @Binding var isShown    : Bool
//    @Binding var image      : Image?
//
//    init(isShown : Binding<Bool>, image: Binding<Image?>) {
//        _isShown = isShown
//        _image   = image
//    }
//
//    //Selected Image
//    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
//        let uiImage = info[UIImagePickerController.InfoKey.originalImage] as! UIImage
//
//        let imageData = uiImage.jpegData(compressionQuality: 1)
//        let imageBase64String = imageData?.base64EncodedString()
//        print(imageBase64String ?? "Could not encode image to Base64")
//
//        image = Image(uiImage: uiImage)
//        print("test")
//        //print(imageData!)
//        //print(image! as Any)
//        isShown = false
//    }
//
//    //Image selection got cancel
//    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
//        isShown = false
//    }
//}
//struct PhotoCaptureView: View {
//
//    @Binding var showImagePicker    : Bool
//    @Binding var image              : Image?
//
//    var body: some View {
//        ImagePicker(isShown: $showImagePicker, image: $image)
//    }
//}
//
//
import SwiftUI
//struct ContentView: View {
//    @State private var showingAlert = false
//    @State var code : String = "60"
//    @State var number : String = ""
//    @ObservedObject var ans = num()
//
//    var body: some View {
//        //        PhoneNumberField(code: $code, number: $number)
//        PhoneNumberField(ans: ans)
//
//    }
//}
//
//struct PhoneNumberField: View {
//    //    @Binding var code: String
//    //    @Binding var number: String
//    @ObservedObject var ans: num
//    var body: some View {
//        VStack{
//            HStack {
//                Text(ans.code)
//                TextField("Number", text: $ans.phone)
//            }
//            .padding()
//            .background(Color.gray)
//            .clipShape(RoundedRectangle(cornerRadius: 10))
//            Button(action: {
//                print("Register tapped")
//                print(self.ans.num)
//            })
//            {
//                Text("+")
//            }
//        }
//
//    }
//}
//class num: ObservableObject {
//    @Published var code: String = "60"
//    @Published var phone: String = ""
//    var num: String {
//        return self.code + self.phone
//    }
//    func testP() {
//        print(self.num)
//    }
//}

