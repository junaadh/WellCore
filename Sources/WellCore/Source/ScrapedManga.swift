//
//  ScrapedManga.swift
//  WellCore
//
//  Created by Moosa Junad on 21/10/2025.
//

import Foundation

public class ScrapedManga: Identifiable {
    public var id: String
    public var name: String
    public var url: URL
    public var index: UInt16

    // Chapters belonging to this manga
    public
        var chapters: [ScrapedChapter]

    public var metadata: Metadata

    public init(
        name: String,
        url: URL,
        index: UInt16,
        id: String,
        chapters: [ScrapedChapter] = [],
        metadata: Metadata,
    ) {
        self.name = name
        self.url = url
        self.index = index
        self.id = id
        self.chapters = chapters
        self.metadata = metadata
    }

}

public class Metadata {
    public var genres: [String]
    public var summary: String
    public var staff: Staff
    public var cover: Cover
    public var bannerImage: String?
    public var tags: [String]
    public var characters: [String]
    public var status: String
    public var startDate: DateInfo
    public var endDate: DateInfo?
    public var synonyms: [String]
    public var chaptersCount: Int
    public var urls: [String]

    init(
        genres: [String],
        summary: String,
        staff: Staff,
        cover: Cover,
        bannerImage: String? = nil,
        tags: [String],
        characters: [String],
        status: String,
        startDate: DateInfo,
        endDate: DateInfo? = nil,
        synonyms: [String],
        chaptersCount: Int,
        urls: [String]
    ) {
        self.genres = genres
        self.summary = summary
        self.staff = staff
        self.cover = cover
        self.bannerImage = bannerImage
        self.tags = tags
        self.characters = characters
        self.status = status
        self.startDate = startDate
        self.endDate = endDate
        self.synonyms = synonyms
        self.chaptersCount = chaptersCount
        self.urls = urls
    }
}

public class Staff {
    public var story: [String]
    public var art: [String]
    public var translation: [String]
    public var lettering: [String]

    init(
        story: [String],
        art: [String],
        translation: [String],
        lettering: [String]
    ) {
        self.story = story
        self.art = art
        self.translation = translation
        self.lettering = lettering
    }
}

public class Cover {
    public var extraLarge: String?
    public var large: String?
    public var medium: String?
    public var color: String?

    init(
        extraLarge: String? = nil,
        large: String? = nil,
        medium: String? = nil,
        color: String? = nil
    ) {
        self.extraLarge = extraLarge
        self.large = large
        self.medium = medium
        self.color = color
    }
}

public class DateInfo {
    public var year: Int
    public var month: Int
    public var day: Int

    init(
        year: Int,
        month: Int,
        day: Int
    ) {
        self.year = year
        self.month = month
        self.day = day
    }
}
