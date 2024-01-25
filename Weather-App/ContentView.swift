//
//  ContentView.swift
//  Weather-App
//
//  Created by Amanda Oliveira on 09/11/23.
//

import SwiftUI

struct ContentView: View {
    
    var isAnimating: Bool = false
    
    var body: some View {
        ZStack {
            BackgroundView(toppingColor: .blue, bottomColor: Color("lightBlue"))
            
            VStack{
                CityTextView(cityName: "Torres Vedras, LIS")
                
                MainWeatherStatusView(imageName: "cloud.sun.fill",
                                      temperature: 17)
                
                HStack(spacing: 20){
                    WeatherDayView(dayOfWeek: "THU",
                                   imageName: "wind",
                                   temperature: 11)
                    
                    WeatherDayView(dayOfWeek: "FRI",
                                   imageName: "cloud.sun.fill",
                                   temperature: 19)
                    
                    WeatherDayView(dayOfWeek: "SAT",
                                   imageName: "sun.max.fill",
                                   temperature: 28)
                    
                    WeatherDayView(dayOfWeek: "SUN",
                                   imageName: "cloud.sun.fill",
                                   temperature: 20)
                    
                    WeatherDayView(dayOfWeek: "MON",
                                   imageName: "smoke.fill",
                                   temperature: 18)
                }
                Spacer()
                
                Button{
                    print("tapped")
                }label: {
                    ButtonWeatherView(title: "Change Day Time",
                                      textColor: Color.blue,
                                      backgroundColor: Color.white)
                   
                }
                Spacer()
                
            }
        }
        
        
    }
    
    struct WeatherDayView: View {
        
        var dayOfWeek:  String
        var imageName: String
        var temperature: Int
        
        var body: some View {
            VStack(spacing: 8){
                Text(dayOfWeek)
                    .font(.system(size: 16, weight: .medium, design: .default))
                    .foregroundStyle(.white)
                Image(systemName: imageName)
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 40, height: 40)
                
                Text("\(temperature)°")
                    .font(.system(size: 25, weight: .medium))
                    .foregroundColor(.white)
                
            }
        }
    }
    struct ContentView_Previews: PreviewProvider{
        static var previews: some View{
            ContentView()
        }
    }
    
    struct BackgroundView: View {
        
        var toppingColor: Color
        var bottomColor:  Color
        
        var body: some View {
            LinearGradient(gradient: Gradient(colors: [toppingColor, bottomColor]), startPoint: .topLeading ,
                           endPoint: .bottomTrailing)
            .ignoresSafeArea(.all)
        }
    }
    
    struct CityTextView: View {
        
        var cityName:  String
        
        var body: some View {
            Text(cityName)
                .font(.system(size: 32, weight: .medium, design: .default))
                .foregroundStyle(.white)
                .padding()
        }
    }
    
    struct MainWeatherStatusView: View {
        
        var imageName: String
        var temperature: Int
        
        var body: some View {
            
            VStack(spacing: 8){
                Image(systemName: imageName)
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 180, height: 180)
                
                Text("\(temperature)°")
                    .font(.system(size: 70, weight: .medium))
                    .foregroundColor(.white)
            }
            
            .padding(8)
        }
    }
    
    
}

#Preview {
    ContentView()
}

