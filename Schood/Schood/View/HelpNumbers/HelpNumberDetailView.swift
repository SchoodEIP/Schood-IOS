//
//  HelpNumberDetailView.swift
//  Schood
//
//  Created by Matéo Deroche on 24/05/2023.
//

import SwiftUI
import CallKit

struct HelpNumberDetailView: View {
    var number : NumberList
    
    var body: some View {
    
        Spacer()
        
        Text("\(number.name)")
            .font(.title2)
            .bold()
            .foregroundColor(.customPurple)
        
        Spacer()
        
        Text("\(number.description)")
            .bold()
            .foregroundColor(.customPurple)
            .frame(maxWidth: UIScreen.main.bounds.width * 0.9)
        
        Spacer()
        
        Text("\(number.phoneNumber)")
            .bold()
            .foregroundColor(.customPurple)
        
        Spacer()
    }
    
//    override func viewDidLoad() {
//        let update = CXCallUpdate()
//        update.remoteHandle = CXHandle(type: .generic, value: "\(number.name)")
//
//        let config = CallKit.CXProviderConfiguration()
//        config.includesCallsInRecents = true;
//        config.supportsVideo = false;
//
//        let provider = CXProvider(configuration: config)
//        provider.setDelegate(self, queue: nil)
//        provider.reportNewIncomingCall(with: UUID(), update: update, completion: { error in })
//
//        func provider()
//    }
    
}

struct HelpNumberDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HelpNumberDetailView(number: NumberList.sampleNumber)
    }
}
