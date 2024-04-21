//
//  ContentView.swift
//  swiftUIKaspiUI
//
//  Created by Alisher Tulembekov on 21.04.2024.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selectedOption = 0
    @State private var findTransaction: String = ""

        let options = ["МОИ ПЕРЕВОДЫ", "ИСТОРИЯ"]
    init() {
        UISegmentedControl.appearance().selectedSegmentTintColor = .red
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor.white], for: .selected)
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor.red], for: .normal)
    }
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "line.3.horizontal")
                    .imageScale(.large)
                    .foregroundColor(.red)
                Spacer()
                Text("Переводы")
                Spacer()
                Image(systemName: "line.3.horizontal")
                    .imageScale(.large)
                    .foregroundColor(.white)
            }
            .padding()
                Picker("Выберите опцию", selection: $selectedOption) {
                    ForEach(0..<options.count, id: \.self) { index in
                        Text(self.options[index])
                            .foregroundColor(self.selectedOption == index ? .red : .black)
                            .tag(index)
                    }
                }
                .border(Color.red, width: 3.5)
                .pickerStyle(.segmented)
                .padding([.leading, .trailing], 5)
                .padding(.bottom, 5)
            
        }
        ZStack {
            Color(red: 0.92, green: 0.92, blue: 0.92)
                .edgesIgnoringSafeArea(.all)
            VStack {
                ZStack {
                    Color.white
                        .frame(height: 40)
                        .padding(10)
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .imageScale(.large)
                            .foregroundColor(.red)
                            .padding(.leading)
                        TextField("Имя, сумма, сообщение", text: $findTransaction)
                        Spacer()
                    }
                }
                ZStack {
                    Color.white
                        .frame(height: 46)
                    HStack {
                        Image(systemName: "calendar")
                            .imageScale(.large)
                            .foregroundColor(.red)
                        Text ("9 декабря - 16 декабря")
                        Spacer()
                            
                    }
                    .padding()
                }
                HStack {
                    Text ("15 декабря")
                        .font(.system(size: 12))
                        .foregroundColor(.gray)
                        .padding(.leading)
                        .padding(.top, 10)
                    Spacer()
                }
                
                ZStack {
                    Color.white
                        .frame(height: 80)
                    HStack {
                        Image(systemName: "person.crop.circle.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 40, height: 40)
                            .padding()
                            .padding(.bottom, 14)
                        VStack {
                            Text ("Kaspi gold")
                            HStack{
                                Image(systemName: "arrow.forward")
                                    .foregroundColor(.red)
                                Text ("Батыр Ш.")
                            }
                            Text ("Клиенту Kaspi")
                                .font(.system(size: 12))
                                .foregroundColor(.gray)
                        }
                        Spacer()
                        HStack{
                            Text ("1 234,00")
                            Image(systemName: "tengesign")
                        }
                        .padding(.bottom, 35)
                        .padding(.trailing, 12)
                    }
                }
                HStack {
                    Text ("13 декабря")
                        .font(.system(size: 12))
                        .foregroundColor(.gray)
                        .padding(.leading)
                        .padding(.top, 10)
                    Spacer()
                }
                ZStack {
                    Color.white
                        .frame(height: 80)
                    HStack {
                        Image(systemName: "person.crop.circle.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 40, height: 40)
                            .padding()
                            .padding(.bottom, 14)
                        VStack {
                            Text ("Kaspi gold")
                            HStack{
                                Image(systemName: "arrow.forward")
                                    .foregroundColor(.red)
                                Text ("Жанар М.")
                            }
                            Text ("Клиенту Kaspi")
                                .font(.system(size: 12))
                                .foregroundColor(.gray)
                        }
                        Spacer()
                        HStack{
                            Text ("123 456,00")
                            Image(systemName: "tengesign")
                        }
                        .padding(.bottom, 35)
                        .padding(.trailing, 12)
                    }
                }
                HStack {
                    Text ("12 декабря")
                        .font(.system(size: 12))
                        .foregroundColor(.gray)
                        .padding(.leading)
                        .padding(.top, 10)
                    Spacer()
                }
                
                ZStack {
                    Color.white
                        .frame(height: 80)
                    HStack {
                        Image(systemName: "person.crop.circle.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 40, height: 40)
                            .padding()
                            .padding(.bottom, 14)
                        VStack {
                            Text ("Kaspi gold")
                            HStack{
                                Image(systemName: "arrow.forward")
                                    .foregroundColor(.red)
                                Text ("Даниил Л.")
                            }
                            Text ("Клиенту Kaspi")
                                .font(.system(size: 12))
                                .foregroundColor(.gray)
                        }
                        Spacer()
                        HStack{
                            Text ("456,00")
                            Image(systemName: "tengesign")
                        }
                        .padding(.bottom, 35)
                        .padding(.trailing, 12)
                    }
                }
                HStack {
                    Text ("12 декабря")
                        .font(.system(size: 12))
                        .foregroundColor(.gray)
                        .padding(.leading)
                        .padding(.top, 10)
                    Spacer()
                }
                
                ZStack {
                    Color.white
                        .frame(height: 80)
                    HStack {
                        Image(systemName: "person.crop.circle.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 40, height: 40)
                            .padding()
                            .padding(.bottom, 14)
                        VStack {
                            Text ("Kaspi gold")
                            HStack{
                                Image(systemName: "arrow.forward")
                                    .foregroundColor(.red)
                                Text ("Маргарита Ш.")
                            }
                            Text ("Клиенту Kaspi")
                                .font(.system(size: 12))
                                .foregroundColor(.gray)
                        }
                        Spacer()
                        HStack{
                            Text ("23 456,00")
                            Image(systemName: "tengesign")
                        }
                        .padding(.bottom, 35)
                        .padding(.trailing, 12)
                    }
                }
                Spacer()
            }
        }
    }
        
}

#Preview {
    ContentView()
}
