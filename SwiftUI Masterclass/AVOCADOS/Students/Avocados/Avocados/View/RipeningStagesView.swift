//
//  RipeningStagesView.swift
//  Avocados
//
//  Created by Guilherme Mendes on 15/06/21.
//

import SwiftUI

struct RipeningStagesView: View {
   // MARK: - PROPERTIES
   
    var ripeningStages: [Ripening] = ripeningData
    
   // MARK: - BODY
   
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            VStack {
                Spacer()
                HStack(alignment: .center, spacing: 25, content: {
                    ForEach(ripeningStages) { item in
                        RipeningView(ripening: item)
                    }
                })
                .padding(.vertical)
                .padding(.horizontal, 25)
                Spacer()
            }
        })
    }
}

// MARK: - PREVIEW

struct RipeningStagesView_Previews: PreviewProvider {
    static var previews: some View {
        RipeningStagesView(ripeningStages: ripeningData)
    }
}
