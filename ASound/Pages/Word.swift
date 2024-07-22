//
//  Word.swift
//  ASound
//
//  Created by yonas on 28/01/2024.
//
import AVFoundation
import SwiftUI

struct Word: View {
    
    //colorToString,
    @State private var currentColor: Color?
    @State var showScreen: Bool = false
    @State var alphaPrint : String = ""
    @State var changeSpeaker: Bool = false
    @State var upperCase: Bool = false
    @State var language: Bool = false
    @State var picks: String = ""
    @State var deleteLeft: Bool = false
    @State var subLetterAmharic: [String] = ["","","","","","",""]
    let synthesizer = AVSpeechSynthesizer()
    @EnvironmentObject var asoundSetting: ASoundSetting
    
    var body: some View {
        ZStack{
            VStack{
                
                Button {
                    if (changeSpeaker){
                        speakText(alphaPrint)
                    }
                } label: {
                    Text(alphaPrint)
                        .font(.system(size: 44))
                        .fontWeight(.bold)
                        .padding()
                        .foregroundColor(asoundSetting.bgColor)
                        .padding(.horizontal, 20)
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
                
                
                //Kebords
                VStack{
                    if language{
                        keybordViewAmharic
                    }else{
                        keybordViewAlpha
                    }
                    keybordViewBottom
            
                    
                }
                    .padding()
                    .background(.black.opacity(0.4))
                    .cornerRadius(20)
                
                Spacer()
                Spacer()
            }
            .padding()
            .frame(maxWidth: .infinity)
            .frame(maxHeight: .infinity)
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
    //text to speeach
    func speakText(_ text: String){
        let utterance = AVSpeechUtterance(string: text)
        utterance.voice = AVSpeechSynthesisVoice(language: asoundSetting.lang)
        //utterance.voice = AVSpeechSynthesisVoice(language: "en-US")
        synthesizer.speak(utterance)
    }
}

struct Word_Previews: PreviewProvider {
    static var previews: some View {
        Word()
    }
}

extension Word{
    private var keybordViewAlpha: some View{
        
        VStack{
            HStack(spacing: 5){
                Button{
                    if alphaPrint.count > 10 {
                        
                    }else{
                        alphaPrint.append(upperCase ? "Q" : "q")
                    }
                } label:{
                    Text(upperCase ? "Q" : "q")
                        .frame(width: 32, height: 50)
                        .foregroundColor(.black)
                        .font(.system(size: 30))
                        .background(.white)
                        .cornerRadius(5)
                }
                
                Button{
                    if alphaPrint.count > 10 {
                        
                    }else{
                        alphaPrint.append(upperCase ? "W" : "w")
                    }
                } label:{
                    Text(upperCase ? "W" : "w")
                        .frame(width: 37, height: 50)
                        .foregroundColor(.black)
                        .font(.system(size: 30))
                        .background(.white)
                        .cornerRadius(5)
                }
                
                Button{
                    if alphaPrint.count > 10 {
                        
                    }else{
                        alphaPrint.append(upperCase ? "E" : "e")
                    }
                } label:{
                    Text(upperCase ? "E" : "e")
                        .frame(width: 32, height: 50)
                        .foregroundColor(.black)
                        .font(.system(size: 30))
                        .background(.white)
                        .cornerRadius(5)
                }
                
                Button{
                    if alphaPrint.count > 10 {
                        
                    }else{
                        alphaPrint.append(upperCase ? "R" : "r")
                    }
                } label:{
                    Text(upperCase ? "R" : "r")
                        .frame(width: 32, height: 50)
                        .foregroundColor(.black)
                        .font(.system(size: 30))
                        .background(.white)
                        .cornerRadius(5)
                }
                
                Button{
                    if alphaPrint.count > 10 {
                        
                    }else{
                        alphaPrint.append(upperCase ? "T" : "t")
                    }
                } label:{
                    Text(upperCase ? "T" : "t")
                        .frame(width: 32, height: 50)
                        .foregroundColor(.black)
                        .font(.system(size: 30))
                        .background(.white)
                        .cornerRadius(5)
                }
                
                Button{
                    if alphaPrint.count > 10 {
                        
                    }else{
                        alphaPrint.append(upperCase ? "Y" : "y")
                    }
                } label:{
                    Text(upperCase ? "Y" : "y")
                        .frame(width: 32, height: 50)
                        .foregroundColor(.black)
                        .font(.system(size: 30))
                        .background(.white)
                        .cornerRadius(5)
                }
                
                Button{
                    if alphaPrint.count > 10 {
                        
                    }else{
                        alphaPrint.append(upperCase ? "U" : "u")
                    }
                } label:{
                    Text(upperCase ? "U" : "u")
                        .frame(width: 32, height: 50)
                        .foregroundColor(.black)
                        .font(.system(size: 30))
                        .background(.white)
                        .cornerRadius(5)
                }
                
                Button{
                    if alphaPrint.count > 10 {
                        
                    }else{
                        alphaPrint.append(upperCase ? "I" : "i")
                    }
                } label:{
                    Text(upperCase ? "I" : "i")
                        .frame(width: 32, height: 50)
                        .foregroundColor(.black)
                        .font(.system(size: 30))
                        .background(.white)
                        .cornerRadius(5)
                }
                
                Button{
                    if alphaPrint.count > 10 {
                        
                    }else{
                        alphaPrint.append(upperCase ? "O" : "o")
                    }
                } label:{
                    Text(upperCase ? "O" : "o")
                        .frame(width: 32, height: 50)
                        .foregroundColor(.black)
                        .font(.system(size: 30))
                        .background(.white)
                        .cornerRadius(5)
                }
                
                Button{
                    if alphaPrint.count > 10 {
                        
                    }else{
                        alphaPrint.append(upperCase ? "P" : "p")
                    }
                } label:{
                    Text(upperCase ? "P" : "p")
                        .frame(width: 32, height: 50)
                        .foregroundColor(.black)
                        .font(.system(size: 30))
                        .background(.white)
                        .cornerRadius(5)
                }

            }
            
            HStack(spacing: 5){
                Button{
                    if alphaPrint.count > 10 {
                        
                    }else{
                        alphaPrint.append(upperCase ? "A" : "a")
                    }
                } label:{
                    Text(upperCase ? "A" : "a")
                        .frame(width: 32, height: 50)
                        .foregroundColor(.black)
                        .font(.system(size: 30))
                        .background(.white)
                        .cornerRadius(5)
                }
                
                Button{
                    if alphaPrint.count > 10 {
                        
                    }else{
                        alphaPrint.append(upperCase ? "S" : "s")
                    }
                } label:{
                    Text(upperCase ? "S" : "s")
                        .frame(width: 37, height: 50)
                        .foregroundColor(.black)
                        .font(.system(size: 30))
                        .background(.white)
                        .cornerRadius(5)
                }
                
                Button{
                    if alphaPrint.count > 10 {
                        
                    }else{
                        alphaPrint.append(upperCase ? "D" : "d")
                    }
                } label:{
                    Text(upperCase ? "D" : "d")
                        .frame(width: 32, height: 50)
                        .foregroundColor(.black)
                        .font(.system(size: 30))
                        .background(.white)
                        .cornerRadius(5)
                }
                
                Button{
                    if alphaPrint.count > 10 {
                        
                    }else{
                        alphaPrint.append(upperCase ? "F" : "f")
                    }
                } label:{
                    Text(upperCase ? "F" : "f")
                        .frame(width: 32, height: 50)
                        .foregroundColor(.black)
                        .font(.system(size: 30))
                        .background(.white)
                        .cornerRadius(5)
                }
                
                Button{
                    if alphaPrint.count > 10 {
                        
                    }else{
                        alphaPrint.append(upperCase ? "G" : "g")
                    }
                } label:{
                    Text(upperCase ? "G" : "g")
                        .frame(width: 32, height: 50)
                        .foregroundColor(.black)
                        .font(.system(size: 30))
                        .background(.white)
                        .cornerRadius(5)
                }
                
                Button{
                    if alphaPrint.count > 10 {
                        
                    }else{
                        alphaPrint.append(upperCase ? "H" : "h")
                    }
                } label:{
                    Text(upperCase ? "H" : "h")
                        .frame(width: 32, height: 50)
                        .foregroundColor(.black)
                        .font(.system(size: 30))
                        .background(.white)
                        .cornerRadius(5)
                }
                
                Button{
                    if alphaPrint.count > 10 {
                        
                    }else{
                        alphaPrint.append(upperCase ? "J" : "j")
                    }
                } label:{
                    Text(upperCase ? "J" : "j")
                        .frame(width: 32, height: 50)
                        .foregroundColor(.black)
                        .font(.system(size: 30))
                        .background(.white)
                        .cornerRadius(5)
                }
                
                Button{
                    if alphaPrint.count > 10 {
                        
                    }else{
                        alphaPrint.append(upperCase ? "K" : "k")
                    }
                } label:{
                    Text(upperCase ? "K" : "k")
                        .frame(width: 32, height: 50)
                        .foregroundColor(.black)
                        .font(.system(size: 30))
                        .background(.white)
                        .cornerRadius(5)
                }
                
                Button{
                    if alphaPrint.count > 10 {
                        
                    }else{
                        alphaPrint.append(upperCase ? "I" : "i")
                    }
                } label:{
                    Text(upperCase ? "I" : "i")
                        .frame(width: 32, height: 50)
                        .foregroundColor(.black)
                        .font(.system(size: 30))
                        .background(.white)
                        .cornerRadius(5)
                }
                
            }
            
            HStack(spacing: 5){
                Button{
                    upperCase.toggle()

                } label:{
                    Image(systemName: "arrow.up")
                        .frame(width: 50, height: 50)
                        .foregroundColor(.black)
                        .font(.system(size: 25))
                        .background(upperCase ? .blue : .white)
                        .cornerRadius(5)
                }
                Button{
                    if alphaPrint.count > 10 {
                        
                    }else{
                        alphaPrint.append(upperCase ? "Z" : "z")
                    }
                } label:{
                    Text(upperCase ? "Z" : "z")
                        .frame(width: 32, height: 50)
                        .foregroundColor(.black)
                        .font(.system(size: 30))
                        .background(.white)
                        .cornerRadius(5)
                }
                
                Button{
                    if alphaPrint.count > 10 {
                        
                    }else{
                        alphaPrint.append(upperCase ? "X" : "x")
                    }
                } label:{
                    Text(upperCase ? "X" : "x")
                        .frame(width: 37, height: 50)
                        .foregroundColor(.black)
                        .font(.system(size: 30))
                        .background(.white)
                        .cornerRadius(5)
                }
                
                Button{
                    if alphaPrint.count > 10 {
                        
                    }else{
                        alphaPrint.append(upperCase ? "C" : "c")
                    }
                } label:{
                    Text(upperCase ? "C" : "c")
                        .frame(width: 32, height: 50)
                        .foregroundColor(.black)
                        .font(.system(size: 30))
                        .background(.white)
                        .cornerRadius(5)
                }
                
                Button{
                    if alphaPrint.count > 10 {
                        
                    }else{
                        alphaPrint.append(upperCase ? "V" : "v")
                    }
                } label:{
                    Text(upperCase ? "V" : "v")
                        .frame(width: 32, height: 50)
                        .foregroundColor(.black)
                        .font(.system(size: 30))
                        .background(.white)
                        .cornerRadius(5)
                }
                
                Button{
                    if alphaPrint.count > 10 {
                        
                    }else{
                        alphaPrint.append(upperCase ? "B" : "b")
                    }
                } label:{
                    Text(upperCase ? "B" : "b")
                        .frame(width: 32, height: 50)
                        .foregroundColor(.black)
                        .font(.system(size: 30))
                        .background(.white)
                        .cornerRadius(5)
                }
                
                Button{
                    if alphaPrint.count > 10 {
                        
                    }else{
                        alphaPrint.append(upperCase ? "N" : "n")
                    }
                } label:{
                    Text(upperCase ? "N" : "n")
                        .frame(width: 32, height: 50)
                        .foregroundColor(.black)
                        .font(.system(size: 30))
                        .background(.white)
                        .cornerRadius(5)
                }
                
                Button{
                    if alphaPrint.count > 10 {
                        
                    }else{
                        alphaPrint.append(upperCase ? "M" : "m")
                    }
                } label:{
                    Text(upperCase ? "M" : "m")
                        .frame(width: 32, height: 50)
                        .foregroundColor(.black)
                        .font(.system(size: 30))
                        .background(.white)
                        .cornerRadius(5)
                }
                
                Button{
                    alphaPrint.popLast()
                } label:{
                    Image(systemName: "delete.left")
                        .frame(width: 50, height: 50)
                        .foregroundColor(.black)
                        .font(.system(size: 30))
                        .background(.white)
                        .cornerRadius(5)
                }
                
            }
            
           
            
           
        }
    }
}

/**
 
    Amharic keybord
 */
// MARK: AMHARIC KEYBORD
extension Word{
    private var keybordViewAmharic: some View{
        VStack{
            HStack(spacing: 5){
                Button{
                    if alphaPrint.count > 10 {
                        
                    }else{
                        alphaPrint.append(subLetterAmharic[0])
                    }
                } label:{
                    Text(subLetterAmharic[0])
                        .frame(width: 45, height: 50)
                        .foregroundColor(.white)
                        .font(.system(size: 30))
                        .background(.black.opacity(0.4))
                        .cornerRadius(10)
                }
                
                Button{
                    if alphaPrint.count > 10 {
                        
                    }else{
                        alphaPrint.append(subLetterAmharic[1])
                    }
                } label:{
                    Text(subLetterAmharic[1])
                        .frame(width: 45, height: 50)
                        .foregroundColor(.white)
                        .foregroundColor(.black)
                        .font(.system(size: 30))
                        .background(.black.opacity(0.4))
                        .cornerRadius(10)
                }
                
                Button{
                    if alphaPrint.count > 10 {
                        
                    }else{
                        alphaPrint.append(subLetterAmharic[2])
                    }
                } label:{
                    Text(subLetterAmharic[2])
                        .frame(width: 45, height: 50)
                        .foregroundColor(.white)
                        .foregroundColor(.black)
                        .font(.system(size: 30))
                        .background(.black.opacity(0.4))
                        .cornerRadius(10)
                }
                
                Button{
                    if alphaPrint.count > 10 {
                        
                    }else{
                        alphaPrint.append(subLetterAmharic[3])
                    }
                } label:{
                    Text(subLetterAmharic[3])
                        .frame(width: 45, height: 50)
                        .foregroundColor(.white)
                        .foregroundColor(.black)
                        .font(.system(size: 30))
                        .background(.black.opacity(0.4))
                        .cornerRadius(10)
                }
                
                Button{
                    if alphaPrint.count > 10 {
                        
                    }else{
                        alphaPrint.append(subLetterAmharic[4])
                    }
                } label:{
                    Text(subLetterAmharic[4])
                        .frame(width: 45, height: 50)
                        .foregroundColor(.white)
                        .foregroundColor(.black)
                        .font(.system(size: 30))
                        .background(.black.opacity(0.4))
                        .cornerRadius(10)
                }
                
                Button{
                    if alphaPrint.count > 10 {
                        
                    }else{
                        alphaPrint.append(subLetterAmharic[5])
                    }
                } label:{
                    Text(subLetterAmharic[5])
                        .frame(width: 45, height: 50)
                        .foregroundColor(.white)
                        .foregroundColor(.black)
                        .font(.system(size: 30))
                        .background(.black.opacity(0.4))
                        .cornerRadius(10)
                }
                
                Button{
                    if alphaPrint.count > 10 {
                        
                    }else{
                        alphaPrint.append(subLetterAmharic[6])
                    }
                } label:{
                    Text(subLetterAmharic[6])
                        .frame(width: 45, height: 50)
                        .foregroundColor(.white)
                        .foregroundColor(.black)
                        .font(.system(size: 30))
                        .background(.black.opacity(0.4))
                        .cornerRadius(10)
                }
            }
            
            
            HStack(spacing: 5){
                Button{
                    if alphaPrint.count > 10 {
                        
                    }else{
                        alphaPrint.append("ሀ")
                    }
                    subLetterAmharic[0] = "ሀ"
                    subLetterAmharic[1] = "ሁ"
                    subLetterAmharic[2] = "ሂ"
                    subLetterAmharic[3] = "ሃ"
                    subLetterAmharic[4] = "ሄ"
                    subLetterAmharic[5] = "ህ"
                    subLetterAmharic[6] = "ሆ"
                } label:{
                    Text("ሀ")
                        .frame(width: 32, height: 50)
                        .foregroundColor(.black)
                        .font(.system(size: 30))
                        .background(.white)
                        .cornerRadius(5)
                }
                
                Button{
                    if alphaPrint.count > 10 {
                        
                    }else{
                        alphaPrint.append("ለ")
                    }
                    subLetterAmharic[0] = "ለ"
                    subLetterAmharic[1] = "ሉ"
                    subLetterAmharic[2] = "ሊ"
                    subLetterAmharic[3] = "ላ"
                    subLetterAmharic[4] = "ሌ"
                    subLetterAmharic[5] = "ል"
                    subLetterAmharic[6] = "ሎ"
                } label:{
                    Text("ለ")
                        .frame(width: 37, height: 50)
                        .foregroundColor(.black)
                        .font(.system(size: 30))
                        .background(.white)
                        .cornerRadius(5)
                }
                
                Button{
                    if alphaPrint.count > 10 {
                        
                    }else{
                        alphaPrint.append("ሐ")
                    }
                    subLetterAmharic[0] = "ሐ"
                    subLetterAmharic[1] = "ሑ"
                    subLetterAmharic[2] = "ሒ"
                    subLetterAmharic[3] = "ሓ"
                    subLetterAmharic[4] = "ሔ"
                    subLetterAmharic[5] = "ሕ"
                    subLetterAmharic[6] = "ሖ"
                } label:{
                    Text("ሐ")
                        .frame(width: 32, height: 50)
                        .foregroundColor(.black)
                        .font(.system(size: 30))
                        .background(.white)
                        .cornerRadius(5)
                }
                
                Button{
                    if alphaPrint.count > 10 {
                        
                    }else{
                        alphaPrint.append("መ")
                    }
                    
                    subLetterAmharic[0] = "መ"
                    subLetterAmharic[1] = "ሙ"
                    subLetterAmharic[2] = "ሚ"
                    subLetterAmharic[3] = "ማ"
                    subLetterAmharic[4] = "ሜ"
                    subLetterAmharic[5] = "ም"
                    subLetterAmharic[6] = "ሞ"
                } label:{
                    Text("መ")
                        .frame(width: 35, height: 50)
                        .foregroundColor(.black)
                        .font(.system(size: 30))
                        .background(.white)
                        .cornerRadius(5)
                }
                
                Button{
                    if alphaPrint.count > 10 {
                        
                    }else{
                        alphaPrint.append("ሠ")
                    }
                    subLetterAmharic[0] = "ሠ"
                    subLetterAmharic[1] = "ሡ"
                    subLetterAmharic[2] = "ሢ"
                    subLetterAmharic[3] = "ሣ"
                    subLetterAmharic[4] = "ሤ"
                    subLetterAmharic[5] = "ሥ"
                    subLetterAmharic[6] = "ሦ"
                } label:{
                    Text("ሠ")
                        .frame(width: 32, height: 50)
                        .foregroundColor(.black)
                        .font(.system(size: 30))
                        .background(.white)
                        .cornerRadius(5)
                }
                
                Button{
                    if alphaPrint.count > 10 {
                        
                    }else{
                        alphaPrint.append("ረ")
                    }
                    subLetterAmharic[0] = "ረ"
                    subLetterAmharic[1] = "ሩ"
                    subLetterAmharic[2] = "ሪ"
                    subLetterAmharic[3] = "ራ"
                    subLetterAmharic[4] = "ሬ"
                    subLetterAmharic[5] = "ር"
                    subLetterAmharic[6] = "ሮ"
                } label:{
                    Text("ረ")
                        .frame(width: 32, height: 50)
                        .foregroundColor(.black)
                        .font(.system(size: 30))
                        .background(.white)
                        .cornerRadius(5)
                }
                
                Button{
                    if alphaPrint.count > 10 {
                        
                    }else{
                        alphaPrint.append("ሰ")
                    }
                    subLetterAmharic[0] = "ሰ"
                    subLetterAmharic[1] = "ሱ"
                    subLetterAmharic[2] = "ሲ"
                    subLetterAmharic[3] = "ሳ"
                    subLetterAmharic[4] = "ሴ"
                    subLetterAmharic[5] = "ስ"
                    subLetterAmharic[6] = "ሶ"
                } label:{
                    Text("ሰ")
                        .frame(width: 32, height: 50)
                        .foregroundColor(.black)
                        .font(.system(size: 30))
                        .background(.white)
                        .cornerRadius(5)
                }
                
                Button{
                    if alphaPrint.count > 10 {
                        
                    }else{
                        alphaPrint.append("ሸ")
                    }
                    subLetterAmharic[0] = "ሸ"
                    subLetterAmharic[1] = "ሹ"
                    subLetterAmharic[2] = "ሺ"
                    subLetterAmharic[3] = "ሻ"
                    subLetterAmharic[4] = "ሼ"
                    subLetterAmharic[5] = "ሽ"
                    subLetterAmharic[6] = "ሾ"
                } label:{
                    Text("ሸ")
                        .frame(width: 32, height: 50)
                        .foregroundColor(.black)
                        .font(.system(size: 30))
                        .background(.white)
                        .cornerRadius(5)
                }
                
                Button{
                    if alphaPrint.count > 10 {
                        
                    }else{
                        alphaPrint.append("ቀ")
                    }
                    subLetterAmharic[0] = "ቀ"
                    subLetterAmharic[1] = "ቁ"
                    subLetterAmharic[2] = "ቂ"
                    subLetterAmharic[3] = "ቃ"
                    subLetterAmharic[4] = "ቄ"
                    subLetterAmharic[5] = "ቅ"
                    subLetterAmharic[6] = "ቆ"
                } label:{
                    Text("ቀ")
                        .frame(width: 32, height: 50)
                        .foregroundColor(.black)
                        .font(.system(size: 30))
                        .background(.white)
                        .cornerRadius(5)
                }
                
                Button{
                    if alphaPrint.count > 10 {
                        
                    }else{
                        alphaPrint.append("በ")
                    }
                    subLetterAmharic[0] = "በ"
                    subLetterAmharic[1] = "ቡ"
                    subLetterAmharic[2] = "ቢ"
                    subLetterAmharic[3] = "ባ"
                    subLetterAmharic[4] = "ቤ"
                    subLetterAmharic[5] = "ብ"
                    subLetterAmharic[6] = "ቦ"
                } label:{
                    Text("በ")
                        .frame(width: 32, height: 50)
                        .foregroundColor(.black)
                        .font(.system(size: 30))
                        .background(.white)
                        .cornerRadius(5)
                }

            }
            
            HStack(spacing: 5){
                
                Button{
                    if alphaPrint.count > 10 {
                        
                    }else{
                        alphaPrint.append("ቨ")
                    }
                    subLetterAmharic[0] = "ቨ"
                    subLetterAmharic[1] = "ቩ"
                    subLetterAmharic[2] = "ቪ"
                    subLetterAmharic[3] = "ቫ"
                    subLetterAmharic[4] = "ቬ"
                    subLetterAmharic[5] = "ቭ"
                    subLetterAmharic[6] = "ቮ"
                } label:{
                    Text("ቨ")
                        .frame(width: 37, height: 50)
                        .foregroundColor(.black)
                        .font(.system(size: 30))
                        .background(.white)
                        .cornerRadius(5)
                }
                
                Button{
                    if alphaPrint.count > 10 {
                        
                    }else{
                        alphaPrint.append("ተ")
                    }
                    subLetterAmharic[0] = "ተ"
                    subLetterAmharic[1] = "ቱ"
                    subLetterAmharic[2] = "ቲ"
                    subLetterAmharic[3] = "ታ"
                    subLetterAmharic[4] = "ቴ"
                    subLetterAmharic[5] = "ት"
                    subLetterAmharic[6] = "ቶ"
                } label:{
                    Text("ተ")
                        .frame(width: 32, height: 50)
                        .foregroundColor(.black)
                        .font(.system(size: 30))
                        .background(.white)
                        .cornerRadius(5)
                }
                
                Button{
                    if alphaPrint.count > 10 {
                        
                    }else{
                        alphaPrint.append("ቸ")
                    }
                    subLetterAmharic[0] = "ቸ"
                    subLetterAmharic[1] = "ቹ"
                    subLetterAmharic[2] = "ቺ"
                    subLetterAmharic[3] = "ቻ"
                    subLetterAmharic[4] = "ቼ"
                    subLetterAmharic[5] = "ች"
                    subLetterAmharic[6] = "ቾ"
                } label:{
                    Text("ቸ")
                        .frame(width: 32, height: 50)
                        .foregroundColor(.black)
                        .font(.system(size: 30))
                        .background(.white)
                        .cornerRadius(5)
                }
                
                Button{
                    if alphaPrint.count > 10 {
                        
                    }else{
                        alphaPrint.append("የ")
                    }
                    subLetterAmharic[0] = "የ"
                    subLetterAmharic[1] = "ዩ"
                    subLetterAmharic[2] = "ዪ"
                    subLetterAmharic[3] = "ያ"
                    subLetterAmharic[4] = "ዬ"
                    subLetterAmharic[5] = "ይ"
                    subLetterAmharic[6] = "ዮ"
                } label:{
                    Text("የ")
                        .frame(width: 32, height: 50)
                        .foregroundColor(.black)
                        .font(.system(size: 30))
                        .background(.white)
                        .cornerRadius(5)
                }
                
                Button{
                    if alphaPrint.count > 10 {
                        
                    }else{
                        alphaPrint.append("ነ")
                    }
                    subLetterAmharic[0] = "ነ"
                    subLetterAmharic[1] = "ኑ"
                    subLetterAmharic[2] = "ኒ"
                    subLetterAmharic[3] = "ና"
                    subLetterAmharic[4] = "ኔ"
                    subLetterAmharic[5] = "ን"
                    subLetterAmharic[6] = "ኖ"
                } label:{
                    Text("ነ")
                        .frame(width: 32, height: 50)
                        .foregroundColor(.black)
                        .font(.system(size: 30))
                        .background(.white)
                        .cornerRadius(5)
                }
                
                Button{
                    if alphaPrint.count > 10 {
                        
                    }else{
                        alphaPrint.append("ኘ")
                    }
                    subLetterAmharic[0] = "ኘ"
                    subLetterAmharic[1] = "ኙ"
                    subLetterAmharic[2] = "ኚ"
                    subLetterAmharic[3] = "ኛ"
                    subLetterAmharic[4] = "ኜ"
                    subLetterAmharic[5] = "ኝ"
                    subLetterAmharic[6] = "ኞ"
                } label:{
                    Text("ኘ")
                        .frame(width: 32, height: 50)
                        .foregroundColor(.black)
                        .font(.system(size: 30))
                        .background(.white)
                        .cornerRadius(5)
                }
                
                Button{
                    if alphaPrint.count > 10 {
                        
                    }else{
                        alphaPrint.append("አ")
                    }
                    subLetterAmharic[0] = "አ"
                    subLetterAmharic[1] = "ኡ"
                    subLetterAmharic[2] = "ኢ"
                    subLetterAmharic[3] = "አ"
                    subLetterAmharic[4] = "ኤ"
                    subLetterAmharic[5] = "እ"
                    subLetterAmharic[6] = "ኦ"
                } label:{
                    Text("አ")
                        .frame(width: 32, height: 50)
                        .foregroundColor(.black)
                        .font(.system(size: 30))
                        .background(.white)
                        .cornerRadius(5)
                }
                
                Button{
                    if alphaPrint.count > 10 {
                        
                    }else{
                        alphaPrint.append("ከ")
                    }
                    subLetterAmharic[0] = "ከ"
                    subLetterAmharic[1] = "ኩ"
                    subLetterAmharic[2] = "ኪ"
                    subLetterAmharic[3] = "ካ"
                    subLetterAmharic[4] = "ኬ"
                    subLetterAmharic[5] = "ክ"
                    subLetterAmharic[6] = "ኮ"
                } label:{
                    Text("ከ")
                        .frame(width: 32, height: 50)
                        .foregroundColor(.black)
                        .font(.system(size: 30))
                        .background(.white)
                        .cornerRadius(5)
                }
                
                Button{
                    if alphaPrint.count > 10 {
                        
                    }else{
                        alphaPrint.append("ኸ")
                    }
                    subLetterAmharic[0] = "ኸ"
                    subLetterAmharic[1] = "ኹ"
                    subLetterAmharic[2] = "ኺ"
                    subLetterAmharic[3] = "ኻ"
                    subLetterAmharic[4] = "ኼ"
                    subLetterAmharic[5] = "ኽ"
                    subLetterAmharic[6] = "ኾ"
                } label:{
                    Text("ኸ")
                        .frame(width: 32, height: 50)
                        .foregroundColor(.black)
                        .font(.system(size: 30))
                        .background(.white)
                        .cornerRadius(5)
                }

            }
            
            HStack(spacing: 5){
                Button{
                    if alphaPrint.count > 10 {
                        
                    }else{
                        alphaPrint.append("ወ")
                    }
                    subLetterAmharic[0] = "ወ"
                    subLetterAmharic[1] = "ዉ"
                    subLetterAmharic[2] = "ዊ"
                    subLetterAmharic[3] = "ዋ"
                    subLetterAmharic[4] = "ዌ"
                    subLetterAmharic[5] = "ው"
                    subLetterAmharic[6] = "ዎ"
                } label:{
                    Text("ወ")
                        .frame(width: 32, height: 50)
                        .foregroundColor(.black)
                        .font(.system(size: 30))
                        .background(.white)
                        .cornerRadius(5)
                }
                
                Button{
                    if alphaPrint.count > 10 {
                        
                    }else{
                        alphaPrint.append("ዘ")
                    }
                    subLetterAmharic[0] = "ዘ"
                    subLetterAmharic[1] = "ዙ"
                    subLetterAmharic[2] = "ዚ"
                    subLetterAmharic[3] = "ዛ"
                    subLetterAmharic[4] = "ዜ"
                    subLetterAmharic[5] = "ዝ"
                    subLetterAmharic[6] = "ዞ"
                } label:{
                    Text("ዘ")
                        .frame(width: 32, height: 50)
                        .foregroundColor(.black)
                        .font(.system(size: 30))
                        .background(.white)
                        .cornerRadius(5)
                }
                
                Button{
                    if alphaPrint.count > 10 {
                        
                    }else{
                        alphaPrint.append("ዠ")
                    }
                    subLetterAmharic[0] = "ዠ"
                    subLetterAmharic[1] = "ዡ"
                    subLetterAmharic[2] = "ዢ"
                    subLetterAmharic[3] = "ዣ"
                    subLetterAmharic[4] = "ዤ"
                    subLetterAmharic[5] = "ዥ"
                    subLetterAmharic[6] = "ዦ"
                    
                } label:{
                    Text("ዠ")
                        .frame(width: 32, height: 50)
                        .foregroundColor(.black)
                        .font(.system(size: 30))
                        .background(.white)
                        .cornerRadius(5)
                }
                
                Button{
                    if alphaPrint.count > 10 {
                        
                    }else{
                        alphaPrint.append("ደ")
                    }
                    subLetterAmharic[0] = "ደ"
                    subLetterAmharic[1] = "ዱ"
                    subLetterAmharic[2] = "ዲ"
                    subLetterAmharic[3] = "ዳ"
                    subLetterAmharic[4] = "ዴ"
                    subLetterAmharic[5] = "ድ"
                    subLetterAmharic[6] = "ዶ"
                } label:{
                    Text("ደ")
                        .frame(width: 32, height: 50)
                        .foregroundColor(.black)
                        .font(.system(size: 30))
                        .background(.white)
                        .cornerRadius(5)
                }
                
                Button{
                    if alphaPrint.count > 10 {
                        
                    }else{
                        alphaPrint.append("ጀ")
                    }
                    subLetterAmharic[0] = "ጀ"
                    subLetterAmharic[1] = "ጁ"
                    subLetterAmharic[2] = "ጂ"
                    subLetterAmharic[3] = "ጃ"
                    subLetterAmharic[4] = "ጄ"
                    subLetterAmharic[5] = "ጅ"
                    subLetterAmharic[6] = "ጆ"
                } label:{
                    Text("ጀ")
                        .frame(width: 32, height: 50)
                        .foregroundColor(.black)
                        .font(.system(size: 30))
                        .background(.white)
                        .cornerRadius(5)
                }
                
                
                Button{
                    if alphaPrint.count > 10 {
                        
                    }else{
                        alphaPrint.append("ገ")
                    }
                    subLetterAmharic[0] = "ገ"
                    subLetterAmharic[1] = "ጉ"
                    subLetterAmharic[2] = "ጊ"
                    subLetterAmharic[3] = "ጋ"
                    subLetterAmharic[4] = "ጌ"
                    subLetterAmharic[5] = "ግ"
                    subLetterAmharic[6] = "ጎ"
                } label:{
                    Text("ገ")
                        .frame(width: 32, height: 50)
                        .foregroundColor(.black)
                        .font(.system(size: 30))
                        .background(.white)
                        .cornerRadius(5)
                }
                
                Button{
                    if alphaPrint.count > 10 {
                        
                    }else{
                        alphaPrint.append("ጠ")
                    }
                    subLetterAmharic[0] = "ጠ"
                    subLetterAmharic[1] = "ጡ"
                    subLetterAmharic[2] = "ጢ"
                    subLetterAmharic[3] = "ጣ"
                    subLetterAmharic[4] = "ጤ"
                    subLetterAmharic[5] = "ጥ"
                    subLetterAmharic[6] = "ጦ"
                } label:{
                    Text("ጠ")
                        .frame(width: 39, height: 50)
                        .foregroundColor(.black)
                        .font(.system(size: 30))
                        .background(.white)
                        .cornerRadius(5)
                }
                
                Button{
                    if alphaPrint.count > 10 {
                        
                    }else{
                        alphaPrint.append("ጨ")
                    }
                    subLetterAmharic[0] = "ጨ"
                    subLetterAmharic[1] = "ጩ"
                    subLetterAmharic[2] = "ጪ"
                    subLetterAmharic[3] = "ጫ"
                    subLetterAmharic[4] = "ጬ"
                    subLetterAmharic[5] = "ጭ"
                    subLetterAmharic[6] = "ጮ"
                } label:{
                    Text("ጨ")
                        .frame(width: 45, height: 50)
                        .foregroundColor(.black)
                        .font(.system(size: 30))
                        .background(.white)
                        .cornerRadius(5)
                }

            }
            
            HStack(spacing: 5){
                Button{
                    if alphaPrint.count > 10 {
                        
                    }else{
                        alphaPrint.append("ጰ")
                    }
                    subLetterAmharic[0] = "ጰ"
                    subLetterAmharic[1] = "ጱ"
                    subLetterAmharic[2] = "ጲ"
                    subLetterAmharic[3] = "ጳ"
                    subLetterAmharic[4] = "ጴ"
                    subLetterAmharic[5] = "ጵ"
                    subLetterAmharic[6] = "ጶ"
                } label:{
                    Text("ጰ")
                        .frame(width: 32, height: 50)
                        .foregroundColor(.black)
                        .font(.system(size: 30))
                        .background(.white)
                        .cornerRadius(5)
                }
                
                Button{
                    if alphaPrint.count > 10 {
                        
                    }else{
                        alphaPrint.append("ጸ")
                    }
                    subLetterAmharic[0] = "ጸ"
                    subLetterAmharic[1] = "ጹ"
                    subLetterAmharic[2] = "ጺ"
                    subLetterAmharic[3] = "ጻ"
                    subLetterAmharic[4] = "ጼ"
                    subLetterAmharic[5] = "ጽ"
                    subLetterAmharic[6] = "ጾ"
                } label:{
                    Text("ጸ")
                        .frame(width: 37, height: 50)
                        .foregroundColor(.black)
                        .font(.system(size: 30))
                        .background(.white)
                        .cornerRadius(5)
                }
                
                Button{
                    if alphaPrint.count > 10 {
                        
                    }else{
                        alphaPrint.append("ፈ")
                    }
                    subLetterAmharic[0] = "ፈ"
                    subLetterAmharic[1] = "ፉ"
                    subLetterAmharic[2] = "ፊ"
                    subLetterAmharic[3] = "ፋ"
                    subLetterAmharic[4] = "ፌ"
                    subLetterAmharic[5] = "ፍ"
                    subLetterAmharic[6] = "ፎ"
                } label:{
                    Text("ፈ")
                        .frame(width: 32, height: 50)
                        .foregroundColor(.black)
                        .font(.system(size: 30))
                        .background(.white)
                        .cornerRadius(5)
                }
                
                Button{
                    if alphaPrint.count > 10 {
                        
                    }else{
                        alphaPrint.append("ፀ")
                    }
                    subLetterAmharic[0] = "ፀ"
                    subLetterAmharic[1] = "ፁ"
                    subLetterAmharic[2] = "ፂ"
                    subLetterAmharic[3] = "ፃ"
                    subLetterAmharic[4] = "ፄ"
                    subLetterAmharic[5] = "ፅ"
                    subLetterAmharic[6] = "ፆ"
                } label:{
                    Text("ፆ")
                        .frame(width: 32, height: 50)
                        .foregroundColor(.black)
                        .font(.system(size: 30))
                        .background(.white)
                        .cornerRadius(5)
                }
                
                Button{
                    if alphaPrint.count > 10 {
                        
                    }else{
                        alphaPrint.append("ዐ")
                    }
                    subLetterAmharic[0] = "ዐ"
                    subLetterAmharic[1] = "ዑ"
                    subLetterAmharic[2] = "ዒ"
                    subLetterAmharic[3] = "ዓ"
                    subLetterAmharic[4] = "ዔ"
                    subLetterAmharic[5] = "ዕ"
                    subLetterAmharic[6] = "ዖ"
                } label:{
                    Text("ዐ")
                        .frame(width: 32, height: 50)
                        .foregroundColor(.black)
                        .font(.system(size: 30))
                        .background(.white)
                        .cornerRadius(5)
                }
                
                Button{
                    if alphaPrint.count > 10 {
                        
                    }else{
                        alphaPrint.append("ኀ")
                    }
                    subLetterAmharic[0] = "ኀ"
                    subLetterAmharic[1] = "ኁ"
                    subLetterAmharic[2] = "ኂ"
                    subLetterAmharic[3] = "ኃ"
                    subLetterAmharic[4] = "ኄ"
                    subLetterAmharic[5] = "ኅ"
                    subLetterAmharic[6] = "ኆ"
                } label:{
                    Text("ኀ")
                        .frame(width: 32, height: 50)
                        .foregroundColor(.black)
                        .font(.system(size: 30))
                        .background(.white)
                        .cornerRadius(5)
                }
                Button{
                    alphaPrint.popLast()
                } label:{
                    Image(systemName: "delete.left")
                        .frame(width: 50, height: 50)
                        .foregroundColor(.black)
                        .font(.system(size: 30))
                        .background(.white)
                        .cornerRadius(5)
                }
            }
            
        }
    }
}

extension Word{
    private var keybordViewBottom: some View{
        HStack{
            Button{
                if alphaPrint.count > 10 {
                    
                }else{
                    alphaPrint.append(" " )
                }
            } label:{
               Image(systemName: "space")
                    .frame(width: 70, height: 50)
                    .foregroundColor(.black)
                    .font(.system(size: 40))
                    .background(.white)
                    .cornerRadius(5)
            }
            
            Button{
                language.toggle()
            } label:{
                Text(language ? "AMH" : "ENG")
                    .frame(maxWidth: .infinity)
                    .frame(height: 50)
                    .foregroundColor(.black)
                    .font(.system(size: 30))
                    .background(language ? .blue : .white)
                    .cornerRadius(5)
            }
                
        }
    }
}
