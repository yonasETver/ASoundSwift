//
//  ContentView.swift
//  ASound
//
//  Created by yonas on 28/01/2024.
//

import SwiftUI

class ASoundSetting: ObservableObject {
    @Published var lang: String = "en-GB"
    @Published var bgColor: Color = Color.green
}

struct ContentView: View {
    //colorToString,
    
    @AppStorage("currentBG") var currentColorString: String = ""
    @State var currentColor: Color?
    @State private var access = [Int]()
    
    @State var showScreen: Bool = false
    @StateObject private  var asoundSetting = ASoundSetting ()
    
    var body: some View {
        GeometryReader{
            geometry in
            NavigationStack(path: $access){
                ScrollView{
                    VStack(spacing: 20){
                        HStack{
                            Button{
                                access.append(0)
                            }label: {
                                Text("NUMBER")
                                    .frame(maxHeight: .infinity)
                                    .foregroundColor(.black)
                                    .font(.title)
                                    .frame(maxWidth: .infinity)
                                    .padding(.vertical, 10)
                                    .background(asoundSetting.bgColor)
                                    .cornerRadius(20)
                            }
                            
                            Button {
                                access.append(1)
                                
                            } label: {
                                Text("ALPHABET")
                                    .frame(maxHeight: .infinity)
                                    .foregroundColor(.black)
                                    .font(.title)
                                    .frame(maxWidth: .infinity)
                                    .padding(.vertical, 10)
                                    .background(asoundSetting.bgColor)
                                    .cornerRadius(20)
                            }
                            
                        }
                        .frame(height: geometry.size.height * 0.4)
                        
                        HStack{
                            Button {
                                access.append(2)
                                
                            } label: {
                                Text("WORD")
                                    .frame(maxHeight: .infinity)
                                    .foregroundColor(.black)
                                    .font(.title)
                                    .frame(maxWidth: .infinity)
                                    .padding(.vertical, 10)
                                    .background(asoundSetting.bgColor)
                                    .cornerRadius(20)
                                
                            }
                            
                            Button {
                                access.append(3)
                                
                            } label: {
                                Text("Color")
                                    .frame(maxHeight: .infinity)
                                    .foregroundColor(.black)
                                    .font(.title)
                                    .frame(maxWidth: .infinity)
                                    .padding(.vertical, 10)
                                    .background(asoundSetting.bgColor)
                                    .cornerRadius(20)
                                
                            }
                        }
                        .frame(height: geometry.size.height * 0.4)
                    }
                    .padding()
                    .frame(maxWidth: .infinity)
                    .frame(maxHeight: .infinity)
                    
                    //used to navigate in main section
                    .navigationDestination(for: Int.self) { index in
                        if index == 0{
                            NumberPage()
                        } else if index == 1{
                            Alpha()
                        }else if index == 2{
                            Word()
                        }else{
                            ColorView()
                        }
                        
                    }
                    
                }
                .background(
                    Image("bacground_image")
                )
                .background(asoundSetting.bgColor).edgesIgnoringSafeArea(.bottom)
                .navigationTitle("ASound")
                .navigationBarTitleDisplayMode(.inline)
                //Top and bottom navigation bar
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading){
                        MenuItems(showScreen: $showScreen)
                    }
                    ToolbarItem(placement: .navigationBarTrailing){
                        SetingItems()
                        
                    }
                    ToolbarItem(placement: .bottomBar){
                        BottomBar()
                        
                    }
                }
                
            }
            .tint(.black)
            
        }
        .environmentObject(asoundSetting)
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct MenuItems: View {

 
    
    @State private var isAlphaActive = false
    @State private var isAlphaActive2 = false
    @State private var isAlphaActive3 = false
    @State private var isAlphaActive4 = false
    @Binding var showScreen: Bool
    
    var body: some View {
        VStack {
            Menu {
                Button {
                    isAlphaActive = true
                } label: {
                    HStack{
                        Image("alpha")
                        Text("ABC")
                        
                    }
                }
                
                Button {
                    isAlphaActive2 = true
                } label: {
                    HStack{
                        Image("number")
                        Text("123")
                        
                    }
                }
                
                Button {
                    isAlphaActive3 = true
                } label: {
                    HStack{
                        Image("word")
                        Text("WORD")
                        
                    }
                }
                
                Button {
                    isAlphaActive4 = true
                } label: {
                    HStack{
                        Image("color")
                        Text("COLOR")
                        
                    }
                }
                
            } label: {
                Image(systemName: "line.horizontal.3")
                    .padding(.bottom, 10)
                    .font(.system(size:20, weight: .bold))
                    .foregroundColor(.black)
            }
            
            //Used to link in the menu section
            NavigationLink(destination: Alpha(), isActive: $isAlphaActive) {
                EmptyView()
                
                
            NavigationLink(destination: NumberPage(), isActive: $isAlphaActive2) {
                    EmptyView()
                }
                
            NavigationLink(destination: Word(), isActive: $isAlphaActive3) {
                        EmptyView()
                    }
            NavigationLink(destination: ColorView(), isActive: $isAlphaActive4) {
                        EmptyView()
                    }
                
            }
        }
    }
}

struct SetingItems: View {
    
    @EnvironmentObject var asoundSetting: ASoundSetting
    var body: some View {
        VStack {
            Menu {
                Menu {
                    Button("UK"){
                        asoundSetting.lang = "en-GB"
                    }
                    
                    Button("US"){
                        asoundSetting.lang = "en-US"
                    }
                    Button("AMH"){
                        asoundSetting.lang = "en-AMH"
                    }
                } label: {
                    Text("LNG")
                }
//
//                Button {
//
//                } label: {
//                    Text("SMod")
//                }
                
            } label: {
                Image(systemName:"gear")
                    .padding(.bottom, 15)
                    .foregroundColor(.black)
            }
            
 
        }
        
    }
}

struct BottomBar: View {
    
    
    @EnvironmentObject var asoundSetting: ASoundSetting
    var body: some View {
        HStack{
            Button {
                asoundSetting.bgColor = Color.red
            } label: {
                
            }
            .frame(width: 70, height: 40)
            .background(Color.red)
            .cornerRadius(10)
            
            Button {
                asoundSetting.bgColor = Color.green
            } label: {
                
            }
            .frame(width: 70, height: 40)
            .background(Color.green)
            .cornerRadius(10)
            
            Button {
                asoundSetting.bgColor = Color.blue
            } label: {
                
            }
            .frame(width: 70, height: 40)
            .background(Color.blue)
            .cornerRadius(10)
            
            Button {
                asoundSetting.bgColor = Color.orange
            } label: {
            
            }
            .frame(width: 70, height: 40)
            .background(Color.orange)
            .cornerRadius(10)
        }
    }
}

