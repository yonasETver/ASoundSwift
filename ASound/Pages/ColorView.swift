//
//  ColorView.swift
//  ASound
//
//  Created by yonas on 28/01/2024.
//
import AVFoundation
import SwiftUI

struct ColorView: View {
    //colorToString,
    @State private var currentColor: Color?
    @State var alphaPrint : String = ""
    @State var showScreen: Bool = false
    @State var changeSpeaker: Bool = false
    @State var forGround: Color = Color.white
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
                        .font(.system(size: 45))
                        .fontWeight(.bold)
                        .foregroundColor(forGround)
                        .padding(.horizontal, 10)
                        .background(.gray.opacity(0.3))
                        .cornerRadius(20)
                        
                }

                    
                //Spacer()
                
                Image(systemName: changeSpeaker ? "speaker.wave.2.circle.fill" : "speaker.slash.circle.fill")
                    .font(.system(size: 45))
                    .foregroundColor(asoundSetting.bgColor)
                    .padding()
                    .onTapGesture {
                        changeSpeaker.toggle()
                    }
                //Spacer()
                
                colorKeybord
                    .padding()
                    .background(Color.primary.opacity(0.5))
                    .cornerRadius(10)
                
               Spacer()
                
                
            }
            //.padding()
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
                .padding(.horizontal,5)
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
}

struct ColorView_Previews: PreviewProvider {
    static var previews: some View {
        ColorView()
    }
}

extension ColorView{
    private var colorKeybord: some View{
        VStack{
            HStack{
                Button {
                    alphaPrint = "Red"
                    forGround = .red
                } label: {
                    VStack{
                        Circle()
                            .fill(.red)
                            .frame(width: 60)
                            .padding(.horizontal, 5)
                            .padding(.top, 5)
                        
                        Text("Red")
                            .foregroundColor(.black)
                            .padding(.bottom, 5)
                    }
                }
                .frame(width: 80)
                .frame(height: 70)
                .background(Color.white.opacity(0.9))
                .cornerRadius(20)
                
                Button {
                    alphaPrint = "Green"
                    forGround = .green
                } label: {
                    VStack{
                        Circle()
                            .fill(.green)
                            .frame(width: 60)
                            .padding(.horizontal, 5)
                            .padding(.top, 5)
                        Text("Red")
                            .foregroundColor(.black)
                            .padding(.bottom, 5)
                    }
                }
                .frame(width: 80)
                .frame(height: 70)
                .background(Color.white.opacity(0.9))
                .cornerRadius(20)
                
                Button {
                    alphaPrint = "Blue"
                    forGround = .blue
                } label: {
                    VStack{
                        Circle()
                            .fill(.blue)
                            .frame(width: 60)
                            .padding(.horizontal, 5)
                            .padding(.top, 5)
                        Text("Red")
                            .foregroundColor(.black)
                            .padding(.bottom, 5)
                        
                    }
                }
                .frame(width: 80)
                .frame(height: 70)
                .background(Color.white.opacity(0.9))
                .cornerRadius(20)
                
                Button {
                    alphaPrint = "Indigo"
                    forGround = .indigo
                } label: {
                    VStack{
                        Circle()
                            .fill(.indigo)
                            .frame(width: 60)
                            .padding(.horizontal, 5)
                            .padding(.top, 5)
                        Text("Indigo")
                            .foregroundColor(.black)
                            .padding(.bottom, 5)
                    }
                }
                .frame(width: 80)
                .frame(height: 70)
                .background(Color.white.opacity(0.9))
                .cornerRadius(20)
            }
            
            HStack{
                Button {
                    alphaPrint = "Orange"
                    forGround = .orange
                } label: {
                    VStack{
                        Circle()
                            .fill(.orange)
                            .frame(width: 60)
                            .padding(.horizontal, 5)
                            .padding(.top, 5)
                        Text("Orange")
                            .foregroundColor(.black)
                            .padding(.bottom, 5)
                    }
                }
                .frame(width: 80)
                .frame(height: 70)
                .background(Color.white.opacity(0.9))
                .cornerRadius(20)
                
                Button {
                    alphaPrint = "Yellow"
                    forGround = .yellow
                } label: {
                    VStack{
                        Circle()
                            .fill(.yellow)
                            .frame(width: 60)
                            .padding(.horizontal, 5)
                            .padding(.top, 5)
                        Text("Yellow")
                            .foregroundColor(.black)
                            .padding(.bottom, 5)
                    }
                }
                .frame(width: 80)
                .frame(height: 70)
                .background(Color.white.opacity(0.9))
                .cornerRadius(20)
                
                Button {
                    alphaPrint = "Violet"
                    forGround = Color("violet")
                } label: {
                    VStack{
                        Circle()
                            .fill(Color("violet"))
                            .frame(width: 60)
                            .padding(.horizontal, 5)
                            .padding(.top, 5)
                        Text("Violet")
                            .foregroundColor(.black)
                            .padding(.bottom, 5)
                        
                    }
                }
                .frame(width: 80)
                .frame(height: 70)
                .background(Color.white.opacity(0.9))
                .cornerRadius(20)
                
                Button {
                    alphaPrint = "Gold"
                    forGround = Color("gold")
                } label: {
                    VStack{
                        Circle()
                            .fill(Color("gold"))
                            .frame(width: 60)
                            .padding(.horizontal, 5)
                            .padding(.top, 5)
                        Text("Gold")
                            .foregroundColor(.black)
                            .padding(.bottom, 5)
                    }
                }
                .frame(width: 80)
                .frame(height: 70)
                .background(Color.white.opacity(0.9))
                .cornerRadius(20)
            }
            
            HStack{
                Button {
                    alphaPrint = "Maroon"
                    forGround = Color("maroon")
                } label: {
                    VStack{
                        Circle()
                            .fill(Color("maroon"))
                            .frame(width: 60)
                            .padding(.horizontal, 5)
                            .padding(.top, 5)
                        Text("Maroon")
                            .foregroundColor(.black)
                            .padding(.bottom, 5)
                    }
                }
                .frame(width: 80)
                .frame(height: 70)
                .background(Color.white.opacity(0.9))
                .cornerRadius(20)
                
                Button {
                    alphaPrint = "Black"
                    forGround = .black
                } label: {
                    VStack{
                        Circle()
                            .fill(.black)
                            .frame(width: 60)
                            .padding(.horizontal, 5)
                            .padding(.top, 5)
                        Text("Black")
                            .foregroundColor(.black)
                            .padding(.bottom, 5)
                    }
                }
                .frame(width: 80)
                .frame(height: 70)
                .background(Color.white.opacity(0.9))
                .cornerRadius(20)
                
                Button {
                    alphaPrint = "Olive"
                    forGround = Color("olive")
                } label: {
                    VStack{
                        Circle()
                            .fill(Color("olive"))
                            .frame(width: 60)
                            .padding(.horizontal, 5)
                            .padding(.top, 5)
                        Text("green")
                            .foregroundColor(.black)
                            .padding(.bottom, 5)
                        
                    }
                }
                .frame(width: 80)
                .frame(height: 70)
                .background(Color.white.opacity(0.9))
                .cornerRadius(20)
                
                Button {
                    alphaPrint = "Cyan"
                    forGround = .cyan
                } label: {
                    VStack{
                        Circle()
                            .fill(.cyan)
                            .frame(width: 60)
                            .padding(.horizontal, 5)
                            .padding(.top, 5)
                        Text("Cyan")
                            .foregroundColor(.black)
                            .padding(.bottom, 5)
                    }
                }
                .frame(width: 80)
                .frame(height: 70)
                .background(Color.white.opacity(0.9))
                .cornerRadius(20)
            }
            HStack{
                Button {
                    alphaPrint = "Pink"
                    forGround = .pink
                } label: {
                    VStack{
                        Circle()
                            .fill(.pink)
                            .frame(width: 60)
                            .padding(.horizontal, 5)
                            .padding(.top, 5)
                        Text("Pink")
                            .foregroundColor(.black)
                            .padding(.bottom, 5)
                    }
                }
                .frame(width: 80)
                .frame(height: 70)
                .background(Color.white.opacity(0.9))
                .cornerRadius(20)
                
                Button {
                    alphaPrint = "Magenta"
                    forGround = Color("magenta")
                } label: {
                    VStack{
                        Circle()
                            .fill(Color("magenta"))
                            .frame(width: 60)
                            .padding(.horizontal, 5)
                            .padding(.top, 5)
                        Text("Magenta")
                            .foregroundColor(.black)
                            .padding(.bottom, 5)
                    }
                }
                .frame(width: 80)
                .frame(height: 70)
                .background(Color.white.opacity(0.9))
                .cornerRadius(20)
                
                Button {
                    alphaPrint = "Tan"
                    forGround = Color("tan")
                } label: {
                    VStack{
                        Circle()
                            .fill(Color("tan"))
                            .frame(width: 60)
                            .padding(.horizontal, 5)
                            .padding(.top, 5)
                        Text("Tan")
                            .foregroundColor(.black)
                            .padding(.bottom, 5)
                        
                    }
                }
                .frame(width: 80)
                .frame(height: 70)
                .background(Color.white.opacity(0.9))
                .cornerRadius(20)
                
                Button {
                    alphaPrint = "Teal"
                    forGround = Color("teal")
                } label: {
                    VStack{
                        Circle()
                            .fill(Color("teal"))
                            .frame(width: 60)
                            .padding(.horizontal, 5)
                            .padding(.top, 5)
                        Text("Teal")
                            .foregroundColor(.black)
                            .padding(.bottom, 5)
                    }
                }
                .frame(width: 80)
                .frame(height: 70)
                .background(Color.white.opacity(0.9))
                .cornerRadius(20)
            }
            
            HStack{
                Button {
                    alphaPrint = "Aqua"
                    forGround = Color("aqua")
                } label: {
                    VStack{
                        Circle()
                            .fill(Color("aqua"))
                            .frame(width: 60)
                            .padding(.horizontal, 5)
                            .padding(.top, 5)
                        Text("Aqua")
                            .foregroundColor(.black)
                            .padding(.bottom, 5)
                    }
                }
                .frame(width: 80)
                .frame(height: 70)
                .background(Color.white.opacity(0.9))
                .cornerRadius(20)
                
                Button {
                    alphaPrint = "Peach"
                    forGround = Color("peach")
                } label: {
                    VStack{
                        Circle()
                            .fill(Color("peach"))
                            .frame(width: 60)
                            .padding(.horizontal, 5)
                            .padding(.top, 5)
                        Text("Peach")
                            .foregroundColor(.black)
                            .padding(.bottom, 5)
                    }
                }
                .frame(width: 80)
                .frame(height: 70)
                .background(Color.white.opacity(0.9))
                .cornerRadius(20)
                
                Button {
                    alphaPrint = "White"
                    forGround = .white
                } label: {
                    VStack{
                        Circle()
                            .fill(.white)
                            .frame(width: 60)
                            .padding(.horizontal, 5)
                            .padding(.top, 5)
                        Text("White")
                            .foregroundColor(.black)
                            .padding(.bottom, 5)
                        
                    }
                }
                .frame(width: 80)
                .frame(height: 70)
                .background(Color.white.opacity(0.9))
                .cornerRadius(20)
                
                Button {
                    alphaPrint = "Amber"
                    forGround = Color("amber")
                } label: {
                    VStack{
                        Circle()
                            .fill(Color("amber"))
                            .frame(width: 60)
                            .padding(.horizontal, 5)
                            .padding(.top, 5)
                        Text("Amber")
                            .foregroundColor(.black)
                            .padding(.bottom, 5)
                    }
                }
                .frame(width: 80)
                .frame(height: 70)
                .background(Color.white.opacity(0.9))
                .cornerRadius(20)
            }
            
            HStack{
                Button {
                    alphaPrint = "Gray"
                    forGround = .gray
                } label: {
                    VStack{
                        Circle()
                            .fill(.gray)
                            .frame(width: 60)
                            .padding(.horizontal, 5)
                            .padding(.top, 5)
                        Text("Gray")
                            .foregroundColor(.black)
                            .padding(.bottom, 5)
                    }
                }
                .frame(width: 80)
                .frame(height: 70)
                .background(Color.white.opacity(0.9))
                .cornerRadius(20)
                
                Button {
                    alphaPrint = "Brown"
                    forGround = .brown
                } label: {
                    VStack{
                        Circle()
                            .fill(.brown)
                            .frame(width: 60)
                            .padding(.horizontal, 5)
                            .padding(.top, 5)
                        Text("Brown")
                            .foregroundColor(.black)
                            .padding(.bottom, 5)
                    }
                }
                .frame(width: 80)
                .frame(height: 70)
                .background(Color.white.opacity(0.9))
                .cornerRadius(20)
                
                Button {
                    alphaPrint = "Lime"
                    forGround = Color("lime")
                } label: {
                    VStack{
                        Circle()
                            .fill(Color("lime"))
                            .frame(width: 60)
                            .padding(.horizontal, 5)
                            .padding(.top, 5)
                        Text("Lime")
                            .foregroundColor(.black)
                            .padding(.bottom, 5)
                        
                    }
                }
                .frame(width: 80)
                .frame(height: 70)
                .background(Color.white.opacity(0.9))
                .cornerRadius(20)
                
                Button {
                    alphaPrint = "Blue gray"
                    forGround = Color("blueGrey")
                } label: {
                    VStack{
                        Circle()
                            .fill(Color("blueGrey"))
                            .frame(width: 60)
                            .padding(.horizontal, 5)
                            .padding(.top, 5)
                        Text("Blue gray")
                            .foregroundColor(.black)
                            .padding(.bottom, 5)
                    }
                }
                .frame(width: 80)
                .frame(height: 70)
                .background(Color.white.opacity(0.9))
                .cornerRadius(20)
            }
        }
    }
}


