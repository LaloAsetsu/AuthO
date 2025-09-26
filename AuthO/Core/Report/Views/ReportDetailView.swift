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
                
                HStack{
                    Text("Comments")
                        .font(.caption)
                        .foregroundStyle(.gray)
                        .padding(.horizontal, 20)
                        .padding(.top, 20)
                    Spacer()
                }
                
                ForEach(report.comments, id: \.id) { comment in
                    NavigationLink {
                        CommentView(comment: comment)
                            .padding(.vertical, 40)
                    } label : {
                        CommentView(comment: comment)
                            .padding(.vertical, 40)
                    }
                    .buttonStyle(.plain)
                }
                
                
            }
            .navigationTitle("Reporte")
            .navigationBarTitleDisplayMode( .inline )
        }
    }
}

#Preview {
    ReportDetailView(report: ExampleCards.cards[0])
}
