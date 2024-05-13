import SwiftUI

struct PlayerView: View {
    var body: some View {
        HStack{
            Image("Logo")
                .resizable()
                .frame(width:150, height: 150)
            Text("Select Player")
                .navigationBarHidden(true)
                .font(.system(size:50))
        }
            HStack{
                VStack{
                    Image("player1")
                        .resizable()
                        .frame(width:150, height: 250)
                    NavigationLink(destination:SelectCategory(totalPlayers:2)){
                        Text("2 Player")
                            .navigationBarHidden(true)
                            .font(.system(size:50))
                                                                                
                    }
                }
                VStack{
                        Image("player1")
                            .resizable()
                            .frame(width:150, height: 250)
                    NavigationLink(destination:SelectCategory(totalPlayers:3)){
                        Text("3 Player")
                            .navigationBarHidden(true)
                            .font(.system(size:50))
                    }
                }
                VStack{
                    Image("player1")
                        .resizable()
                        .frame(width:150, height: 250)
                    NavigationLink(destination:SelectCategory(totalPlayers:4)){
                        Text("4 Player")
                            .navigationBarHidden(true)
                            .font(.system(size:50))
                    }
                }
        }
    }
}
