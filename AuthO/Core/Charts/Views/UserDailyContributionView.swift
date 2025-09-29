//
//  UserDailyContributionView.swift
//  AuthO
//
//  Created by Leoni Bernabe on 29/09/25.
//

import SwiftUI
import Charts

struct UserDailyContributionView: View {
    @State private var showChart: Bool = true
    
    var body: some View {
        NavigationStack {
            Form {
                Text("Tu día con mas contribuciones del més con fue de \(Text("\(ChartDataExamples.mostContributedDay.contributions) reportes").bold()) el \(ChartDataExamples.mostContributedDay.day,  format: Date.FormatStyle().day().month())")
                    .listRowSeparator(.hidden)
                    .listRowBackground(Color.clear)
                
                Section {
                    Chart {
                        ForEach(ChartDataExamples.userContribution, id: \.id) { chartPoint in
                            BarMark(
                                x: .value("day", chartPoint.day),
                                y: .value("contribution", chartPoint.contributions),
                                width: .fixed(15)
                            )
                            .opacity(Calendar.current.isDateInToday(chartPoint.day) ? 1 : 0.5)
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
                    .chartYAxis {
                        AxisMarks(position: .leading)
                    }
                    .padding(2)
                }
                
                Section {
                    Toggle("Mostrar reportes rechazados", isOn: $showChart)
                }
            }
            .navigationTitle("User Daily Contribution")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    UserDailyContributionView()
}
