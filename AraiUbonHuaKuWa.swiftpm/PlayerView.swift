import SwiftUI

struct PlayerView: View {

    var body: some View {
        HStack{
            Image("Select player")
                .resizable()
                .frame(width : 600, height: 150)
        }.padding(.bottom, 30)
            HStack{
                VStack{
                    Image("2-player")
                        .resizable()
                        .frame(width:320, height: 330)
                        
                    NavigationLink(destination:SelectCategory(totalPlayers: 2)){
                        Image("2-player-btn")
                            .resizable()
                            .frame(width:300, height: 120)
                            .padding(.top, 20)
                                                                                
                    }
                }.padding(.trailing, 20)
                VStack{
                    Image("3-player")
                        .resizable()
                        .frame(width:300, height: 330)
                    
                    NavigationLink(destination:SelectCategory(totalPlayers: 3)){
                        Image("3-player-btn")
                            .resizable()
                            .frame(width:300, height: 120)
                            .padding(.top, 20)
                        
                    }
                }.padding(.trailing, 20)
                VStack{
                    Image("4-player")
                        .resizable()
                        .frame(width:320, height: 330)
                    
                    NavigationLink(destination:SelectCategory(totalPlayers: 4)){
                        Image("4-player-btn")
                            .resizable()
                            .frame(width:320, height: 120)
                            .padding(.top, 20)
                        
                    }
                }.padding(.trailing, 20)
        }
    }
}