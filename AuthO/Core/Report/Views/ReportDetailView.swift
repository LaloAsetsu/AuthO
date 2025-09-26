//
//  ReportDetailView.swift
//  AuthO
//
//  Created by Leoni Bernabe on 25/09/25.
//

import SwiftUI

struct ReportDetailView: View {
    @State var report: CardModel
    
    var body: some View {
        NavigationStack{
            ScrollView{
                NormalReportCardView(report: report, detail: false)
                    .padding()
                
                Divider()
                    .padding(.horizontal, 10)
                
            }
            .navigationTitle("Reporte")
            .navigationBarTitleDisplayMode( .inline )
        }
    }
}

#Preview {
    ReportDetailView(report: ExampleCards.cards.first!)
}
