//
//  WidgetHero.swift
//  WidgetHero
//
//  Created by Musab Bahadır Bayram on 18.09.2023.
//

import WidgetKit
import SwiftUI
import Intents

struct Provider: IntentTimelineProvider {
    
    @State var heroData : Data = Data()
    
    func placeholder(in context: Context) -> SimpleEntry {
        SimpleEntry(date: Date(), configuration: ConfigurationIntent(), hero: Superhero(image: "batman", name: "batman", realName: "Bruce Wayne"))
    }

    func getSnapshot(for configuration: ConfigurationIntent, in context: Context, completion: @escaping (SimpleEntry) -> ()) {
        
        if let hero = try? JSONDecoder().decode(Superhero.self, from: heroData) {
            let entry = SimpleEntry(date: Date(), configuration: configuration, hero: hero)
            completion(entry)
        }
    }

    func getTimeline(for configuration: ConfigurationIntent, in context: Context, completion: @escaping (Timeline<Entry>) -> ()) {
        var entries: [SimpleEntry] = []

        // Generate a timeline consisting of five entries an hour apart, starting from the current date.
        let currentDate = Date()
        for hourOffset in 0 ..< 5 {
            let entryDate = Calendar.current.date(byAdding: .hour, value: hourOffset, to: currentDate)!
            let entry = SimpleEntry(date: entryDate, configuration: configuration, hero: <#Superhero#>)
            entries.append(entry)
        }

        let timeline = Timeline(entries: entries, policy: .never)
        completion(timeline)
    }
}

struct SimpleEntry: TimelineEntry {
    let date: Date
    let configuration: ConfigurationIntent
    let hero : Superhero
}

struct WidgetHeroEntryView : View {
    var entry: Provider.Entry

    var body: some View {
        Text(entry.date, style: .time)
    }
}

struct WidgetHero: Widget {
    let kind: String = "WidgetHero"

    var body: some WidgetConfiguration {
        IntentConfiguration(kind: kind, intent: ConfigurationIntent.self, provider: Provider()) { entry in
            WidgetHeroEntryView(entry: entry)
        }
        .configurationDisplayName("My Widget")
        .description("This is an example widget.")
    }
}

struct WidgetHero_Previews: PreviewProvider {
    static var previews: some View {
        WidgetHeroEntryView(entry: SimpleEntry(date: Date(), configuration: ConfigurationIntent(), hero: <#Superhero#>))
            .previewContext(WidgetPreviewContext(family: .systemSmall))
    }
}
