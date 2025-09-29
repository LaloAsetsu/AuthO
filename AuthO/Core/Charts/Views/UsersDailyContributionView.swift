//
//  UsersDailyContributionView.swift
//  AuthO
//
//  Created by Leoni Bernabe on 29/09/25.
//

import SwiftUI
import Charts

struct UsersDailyContributionView: View {
    @State private var showChart: Bool = true
    
    var body: some View {
        NavigationStack {
            Form {
                Text("El promedio de contribuciones diarias en la semana fue de \(Text("30 al día").bold()) dentro de la aplicación")
                    .listRowBackground(Color.clear)
                
                Section {
                    Chart {
                        if showChart {
                            ForEach(ChartDataExamples.usersContribution, id: \.id) { chartPoint in
                                BarMark(
                                    x: .value("day", chartPoint.day),
                                    y: .value("contribution", chartPoint.count),
                                    width: .fixed(15)
                                )
                                
                            }
                        }
                        
                    }
                    .frame(height: 200)
                    .chartXScale(range: .plotDimension(padding: 20))
                    .chartXAxis {
                        AxisMarks(values: .stride(by: .day)) { value in
                            AxisGridLine()
                            AxisTick()
                            AxisValueLabel(format: .dateTime.day(), centered: true)
                        }
                    }
                    .padding(2)
                }
                
                Section {
                    Toggle("Mostrar reportes rechazados", isOn: $showChart)
                }
            }
            .navigationTitle("Users Daily Contribution")
            .navigationBarTitleDisplayMode(.inline)
        }
        
    }
}

#Preview {
    UsersDailyContributionView()
}
