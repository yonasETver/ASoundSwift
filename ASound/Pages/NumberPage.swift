//
//  NumberPage.swift
//  ASound
//
//  Created by yonas on 28/01/2024.
//
import AVFoundation
import SwiftUI

struct NumberPage: View {
    
    // MARK: STATE VARIABLES
    @State private var currentColor: Color?
    @State var showScreen: Bool = false
    @State var changeSpeaker: Bool = false
    @State var numberPrint: String?
    @State var multiString: Bool = false
    @State var stringArray: [String] = []
    let synthesizer = AVSpeechSynthesizer()
    
    @State var size: Int = 0
    
    @EnvironmentObject var asoundSetting: ASoundSetting
   
    var body: some View {
        
        ZStack{
            
            VStack{
                
                Button {
                    if (changeSpeaker){
                        speakText(numberPrint ?? "0")
                    }
                } label: {
                    Text(numberPrint ?? "0")
                        .font(.system(size: 120))
                        .fontWeight(.bold)
                        .foregroundColor(asoundSetting.bgColor)
                        .background(.black.opacity(0.7))
                        .cornerRadius(20)
                }
                Spacer()
                
                Image(systemName: changeSpeaker ? "speaker.wave.2.circle.fill" : "speaker.slash.circle.fill")
                    .font(.system(size: 60))
                    .foregroundColor(asoundSetting.bgColor)
                    .onTapGesture {
                        changeSpeaker.toggle()
                    }
                
                Spacer()
                Spacer()
                
                //number keybord
                keybordView
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(.black.opacity(0.4))
                    .cornerRadius(20)
                
                Spacer()
                Spacer()
                Spacer()
                
            }
            .padding()
            .frame(maxWidth: .infinity)
            .frame(maxHeight: .infinity)
            .onChange(of: asoundSetting.bgColor) { newColor in
                        currentColor = newColor
                    }
        }
        .background(
            Image("bacground_image")
        )
        .background(asoundSetting.bgColor).edgesIgnoringSafeArea(.bottom)
    
        .safeAreaInset(edge: .top, spacing: nil){
            HStack{
                MenuItems(showScreen: $showScreen)
                Spacer()
                SetingItems()
                
            }
                .frame(maxWidth: .infinity)
                .padding(.horizontal,10)
                .background(asoundSetting.bgColor.edgesIgnoringSafeArea(.bottom))
        }
        
        .safeAreaInset(edge: .bottom, spacing: nil){
            BottomBar()
        }
    }
    
    func speakText(_ text: String){
        let utterance = AVSpeechUtterance(string: text)
        utterance.voice = AVSpeechSynthesisVoice(language: asoundSetting.lang)
        //utterance.voice = AVSpeechSynthesisVoice(language: "en-US")
        synthesizer.speak(utterance)
    }
    
    func setColor(){
        currentColor = asoundSetting.bgColor
    }
}

struct NumberPage_Previews: PreviewProvider {
    static var previews: some View {
        NumberPage()
    }
}

// MARK: NUMBER KEYBORD
extension NumberPage{
    private var keybordView: some View{
        VStack{
            HStack{
                Button {
                    if multiString{
                        if let unwrappedStr = numberPrint{
                            size = unwrappedStr.count
                        }else{
                            size = 0
                        }
                        
                        if size < 4 {
                            numberPrint?.append("1")
                        }
                    } else{
                        numberPrint = "1"
                    }
                } label: {
                    Text("1")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .frame(width: 50)
                        .padding()
                        .padding(.horizontal, 10)
                        .background(.white)
                        .foregroundColor(.black)
                        .cornerRadius(20)
                }
                
                Button {
                    if multiString{
                        
                        if let unwrappedStr = numberPrint{
                            size = unwrappedStr.count
                        }else{
                            size = 0
                        }
                        
                        if size <  4 {
                            numberPrint?.append("2")
                        }
                    } else{
                        numberPrint = "2"
                    }
                } label: {
                    Text("2")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .frame(width: 50)
                        .padding()
                        .padding(.horizontal, 10)
                        .background(.white)
                        .foregroundColor(.black)
                        .cornerRadius(20)
                }
                
                Button {
                    if multiString{
                        if let unwrappedStr = numberPrint{
                            size = unwrappedStr.count
                        }else{
                            size = 0
                        }
                        
                        if size < 4{
                            numberPrint?.append("3")
                        }
                    } else{
                        numberPrint = "3"
                    }
                } label: {
                    Text("3")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .frame(width: 50)
                        .padding()
                        .padding(.horizontal, 10)
                        .background(.white)
                        .foregroundColor(.black)
                        .cornerRadius(20)
                }
                

            }
            
            HStack{
                Button {
                    if multiString{
                        if let unwrappedStr = numberPrint{
                            size = unwrappedStr.count
                        }else{
                            size = 0
                        }
                        
                        if size < 4 {
                            numberPrint?.append("4")
                        }
                    } else{
                        numberPrint = "4"
                    }
                } label: {
                    Text("4")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .frame(width: 50)
                        .padding()
                        .padding(.horizontal, 10)
                        .background(.white)
                        .foregroundColor(.black)
                        .cornerRadius(20)
                }
                
                Button {
                    if multiString{
                        if let unwrappedStr = numberPrint{
                            size = unwrappedStr.count
                        }else{
                            size = 0
                        }
                        
                        if size < 4 {
                            numberPrint?.append("5")
                        }
                    } else{
                        numberPrint = "5"
                    }
                } label: {
                    Text("5")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .frame(width: 50)
                        .padding()
                        .padding(.horizontal, 10)
                        .background(.white)
                        .foregroundColor(.black)
                        .cornerRadius(20)
                }
                
                Button {
                    if multiString{
                        if let unwrappedStr = numberPrint{
                            size = unwrappedStr.count
                        }else{
                            size = 0
                        }
                        
                        if size < 4 {
                            numberPrint?.append("6")
                        }
                    } else{
                        numberPrint = "6"
                    }
                } label: {
                    Text("6")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .frame(width: 50)
                        .padding()
                        .padding(.horizontal, 10)
                        .background(.white)
                        .foregroundColor(.black)
                        .cornerRadius(20)
                }
            }
            
            HStack{
                Button {
                    if multiString{
                        
                        if let unwrappedStr = numberPrint{
                            size = unwrappedStr.count
                        }else{
                            size = 0
                        }
                        
                        if size < 4 {
                            numberPrint?.append("7")
                        }
                    } else{
                        numberPrint = "7"
                    }
                } label: {
                    Text("7")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .frame(width: 50)
                        .padding()
                        .padding(.horizontal, 10)
                        .background(.white)
                        .foregroundColor(.black)
                        .cornerRadius(20)
                }
                
                Button {
                    if multiString{
                        if let unwrappedStr = numberPrint{
                            size = unwrappedStr.count
                        }else{
                            size = 0
                        }
                        
                        if size < 4 {
                            numberPrint?.append("8")
                        }
                    } else{
                        numberPrint = "8"
                    }
                } label: {
                    Text("8")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .frame(width: 50)
                        .padding()
                        .padding(.horizontal, 10)
                        .background(.white)
                        .foregroundColor(.black)
                        .cornerRadius(20)
                }
                
                Button {
                    
                    if multiString{
                        
                        if let unwrappedStr = numberPrint{
                            size = unwrappedStr.count
                        }else{
                            size = 0
                        }
                        
                        if size < 4{
                            numberPrint?.append("9")
                        }
                           
                        
                    } else{
                        numberPrint = "9"
                    }
                } label: {
                    Text("9")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .frame(width: 50)
                        .padding()
                        .padding(.horizontal, 10)
                        .background(.white)
                        .foregroundColor(.black)
                        .cornerRadius(20)
                }
            }
            
            HStack{
                Button {
    
                    if multiString{
                        numberPrint?.popLast()
                    } else{
                        numberPrint = ""
                    }
                } label: {
                    Image(systemName: "delete.left")
                        .font(.largeTitle)
                        .frame(width: 50)
                        .padding()
                        .padding(.horizontal, 10)
                        .background(.white)
                        .foregroundColor(.black)
                        .cornerRadius(20)
                }
                
                Button {
                    if multiString{
                        
                        if let unwrappedStr = numberPrint{
                            size = unwrappedStr.count
                        }else{
                            size = 0
                        }
                        
                        if size < 4 {
                            numberPrint?.append("0")
                        }
                    } else{
                        numberPrint = "0"
                    }
                } label: {
                    Text("0")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .frame(width: 50)
                        .padding()
                        .padding(.horizontal, 10)
                        .background(.white)
                        .foregroundColor(.black)
                        .cornerRadius(20)
                }
                
                Button {
                    multiString.toggle()
                } label: {
                    Text(multiString ? "+1N" : "1N")
                        .font(.title)
                        .frame(width: 50)
                        .padding()
                        .padding(.horizontal, 10)
                        .background(multiString ? .blue : .white)
                        .foregroundColor(.black)
                        .cornerRadius(20)
                        
                }
                

            }
        }
    }
}
