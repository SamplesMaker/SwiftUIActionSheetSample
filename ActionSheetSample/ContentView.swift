//
//  ContentView.swift
//  ActionSheetSample
//
//  Created by MakeItSimple on 2020/02/20.
//  Copyright © 2020 Ju Young Jung. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var showActionSheet = false
    
    var actionSheet: ActionSheet {
        ActionSheet(title: Text("난 타이틀"), message: Text("난 메시지"), buttons: [
            .default(Text("기본버튼")),
            .destructive(Text("파괴 버튼?")),
            .cancel(Text("취소버튼"))
        ])
    }
    
    
    var body: some View {
        Button(action: { self.showActionSheet.toggle() }) {
            Text("Show Action Sheet")
        }.actionSheet(isPresented: $showActionSheet, content: { self.actionSheet})
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
