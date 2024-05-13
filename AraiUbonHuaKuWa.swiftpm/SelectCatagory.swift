import SwiftUI

struct SelectCategory: View {
    @State private var SelectedCategory: String = ""
    var totalPlayers : Int
    var body: some View {
        NavigationStack{
            VStack{
                HStack{
                    Image("Logo")
                        .resizable()
                        .frame(width:150, height: 150)
                    Text("Select Category")
                        .navigationBarHidden(true)
                        .font(.system(size:50))
                }
                ScrollView{
                    HStack{
                        VStack{
                            Image("Logo")
                                .resizable()
                                .frame(width:150, height: 250)
                            NavigationLink(destination:Loading(category: "1",totalPlayers:totalPlayers)){
                                Text("การ์ตูน")
                                    .navigationBarHidden(true)
                                    .font(.system(size:50))
                            }
                        }
                        VStack{
                            Image("Logo")
                                .resizable()
                                .frame(width:150, height: 250)
                            NavigationLink(destination:Loading(category: "2",totalPlayers:totalPlayers)){
                                Text("อาหาร")
                                    .navigationBarHidden(true)
                                    .font(.system(size:50))
                            }
                        }
                        VStack{
                            Image("Logo")
                                .resizable()
                                .frame(width:150, height: 250)
                            NavigationLink(destination:Loading(category: "3",totalPlayers:totalPlayers)){
                                Text("สถานที่")
                                    .navigationBarHidden(true)
                                    .font(.system(size:50))
                            }
                        }
                    }
                    HStack{
                        VStack{
                            Image("Logo")
                                .resizable()
                                .frame(width:150, height: 250)
                            NavigationLink(destination:Loading(category: "4",totalPlayers:totalPlayers)){
                                Text("คนดัง")
                                    .navigationBarHidden(true)
                                    .font(.system(size:50))
                            }
                        }
                        VStack{
                            Image("Logo")
                                .resizable()
                                .frame(width:150, height: 250)
                            NavigationLink(destination:Loading(category: "5",totalPlayers:totalPlayers)){
                                Text("เพลง&ศิลปิน")
                                    .navigationBarHidden(true)
                                    .font(.system(size:50))
                            }
                        }
                        VStack{
                            Image("Logo")
                                .resizable()
                                .frame(width:150, height: 250)
                            NavigationLink(destination:Loading(category: "6",totalPlayers:totalPlayers)){
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
