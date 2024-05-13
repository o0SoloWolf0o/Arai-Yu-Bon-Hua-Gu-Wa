import SwiftUI

struct SelectCategory: View {
    @State private var SelectedCategory: String = ""
    var body: some View {
        VStack{
            HStack{
                Image("Select category")
                    .resizable() 
                    .frame(width:700, height: 180)
            }.padding(.bottom, 30)
            ScrollView{
                HStack{
                    VStack{
                        Image("Random-category")
                            .resizable()
                            .frame(width:480, height: 150)
                        Text("สุ่ม (แนะนำ)")
                            .navigationBarHidden(true)
                            .font(.system(size:50))
                    }
                }
                HStack{
                    NavigationLink(destination: Loading()){
                        VStack{
                            Image("Cartoon-category")
                                .resizable()
                                .frame(width:300, height: 150)
                            Text("การ์ตูน")
                                .navigationBarHidden(true)
                                .font(.system(size:50))
                        }
                    }
                    VStack{
                        Image("Food-category")
                            .resizable()
                            .frame(width:300, height: 150)
                        Text("อาหาร")
                            .navigationBarHidden(true)
                            .font(.system(size:50))
                        
                    }
                    VStack{
                        Image("Place-category")
                            .resizable()
                            .frame(width:300, height: 150)
                        Text("สถานที่")
                            .navigationBarHidden(true)
                            .font(.system(size:50))
                    }
                }.padding(.bottom, 60)
                HStack{
                    VStack{
                        Image("Celeb-category")
                            .resizable()
                            .frame(width:300, height: 150)
                        Text("คนดัง")
                            .navigationBarHidden(true)
                            .font(.system(size:50))
                    }
                    VStack{
                        Image("Music-category")
                            .resizable()
                            .frame(width:300, height: 150)
                        Text("เพลง&ศิลปิน")
                            .navigationBarHidden(true)
                            .font(.system(size:50))
                        
                    }
                    VStack{
                        Image("Thing-category")
                            .resizable()
                            .frame(width:300, height: 150)
                        Text("สิ่งของ")
                            .navigationBarHidden(true)
                            .font(.system(size:50))
                    }
                }
            }
        }
    }
}
