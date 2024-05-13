import SwiftUI

struct SelectCategory: View {
    @State private var SelectedCategory: String = ""
    var totalPlayers : Int
    var body: some View {
        NavigationStack{
            VStack{
                HStack{
                    Image("Select category")
                        .resizable()
                        .frame(width:700, height: 180)
                }.padding(.bottom, 30)
                ScrollView{
                    VStack{
                        NavigationLink(destination:Loading(category: "7",totalPlayers:totalPlayers)){
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
                        HStack{
                            VStack{
                                NavigationLink(destination:Loading(category: "1",totalPlayers:totalPlayers)){
                                    VStack {
                                        Image("Cartoon-category")
                                            .resizable()
                                            .frame(width:300, height: 150)
                                        Text("การ์ตูน")
                                            .navigationBarHidden(true)
                                            .font(.system(size:50))
                                    }
                                }
                            }
                            VStack{
                                NavigationLink(destination:Loading(category: "2",totalPlayers:totalPlayers)){
                                    VStack {
                                        Image("Food-category")
                                            .resizable()
                                            .frame(width:300, height: 150)
                                        Text("อาหาร")
                                            .navigationBarHidden(true)
                                            .font(.system(size:50))
                                    }
                                }
                            }
                        }
                            VStack{
                                NavigationLink(destination:Loading(category: "3",totalPlayers:totalPlayers)){
                                    VStack{
                                        Image("Place-category")
                                            .resizable()
                                            .frame(width:300, height: 150)
                                        Text("สถานที่")
                                            .navigationBarHidden(true)
                                            .font(.system(size:50))
                                    }
                                }
                            }
                        }
                        HStack{
                            VStack{
                                NavigationLink(destination:Loading(category: "4",totalPlayers:totalPlayers)){
                                    VStack{
                                        Image("Celeb-category")
                                            .resizable()
                                            .frame(width: 300, height: 150)
                                        Text("คนดัง")
                                            .navigationBarHidden(true)
                                            .font(.system(size:50))
                                    }
                                }
                            }
                            VStack{
                                NavigationLink(destination:Loading(category: "5",totalPlayers:totalPlayers)){
                                    VStack{
                                        Image("Music-category")
                                            .resizable()
                                            .frame(width:300, height: 150)
                                        Text("เพลง&ศิลปิน")
                                            .navigationBarHidden(true)
                                            .font(.system(size:50))
                                    }
                                    
                                }
                            }
                            VStack{
                                NavigationLink(destination:Loading(category: "6",totalPlayers:totalPlayers)){
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
            }
        }
    }
}
