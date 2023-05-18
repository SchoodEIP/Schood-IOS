//
//  HistoricSurveyView.swift
//  Schood
//
//  Created by Matéo Deroche on 11/05/2023.
//

import SwiftUI

struct HistoricSurveyView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    
                    Text("Survey Historic") /// NEED TO BE PUT AS A TITLE
                        .font(.title2.weight(.semibold))
                        .foregroundColor(.customPurple)
                        .padding(.top, 60)
                        .padding(.bottom, 50)
                    
                    HStack {
                        Spacer()
                        
                        Text("Date : Today")
                            .font(.title3.weight(.semibold))
                            .foregroundColor(.customPurple)
                        
                        Spacer()
                        
                        NavigationLink(destination: SurveyView()) {
                            Text("To be done")
                                .font(.title3.weight(.semibold))
                                .foregroundColor(.customPurple)
                        }
                        
                        Spacer()
                    } ///HStack
                    .padding(.bottom, UIScreen.main.bounds.height * 0.02)
                    
                    HStack {
                        Spacer()
                        
                        Text("Date : 10/05/2023")
                            .font(.title3.weight(.semibold))
                            .foregroundColor(.customPurple)
                        
                        Spacer()
                        
                        Text("Done")
                            .font(.title3.weight(.semibold))
                            .foregroundColor(.customPurple)
                        
                        Spacer()
                    } ///HStack
                    .padding(.bottom, UIScreen.main.bounds.height * 0.02)
                    
                    HStack {
                        Spacer()
                        
                        Text("Date : 09/05/2023")
                            .font(.title3.weight(.semibold))
                            .foregroundColor(.customPurple)
                        
                        Spacer()
                        
                        Text("Done")
                            .font(.title3.weight(.semibold))
                            .foregroundColor(.customPurple)
                        
                        Spacer()
                    } ///HStack
                    .padding(.bottom, UIScreen.main.bounds.height * 0.02)
                    
                    HStack {
                        Spacer()
                        
                        Text("Date : 09/05/2023")
                            .font(.title3.weight(.semibold))
                            .foregroundColor(.customPurple)
                        
                        Spacer()
                        
                        Text("Done")
                            .font(.title3.weight(.semibold))
                            .foregroundColor(.customPurple)
                        
                        Spacer()
                    } ///HStack
                    .padding(.bottom, UIScreen.main.bounds.height * 0.02)
                    
                } ///VStack
                
            }
        }
    }
}

struct HistoricSurveyView_Previews: PreviewProvider {
    static var previews: some View {
        HistoricSurveyView()
    }
}
