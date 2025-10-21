//
//  ScrapedChapter.swift
//  WellCore
//
//  Created by Moosa Junad on 21/10/2025.
//

import Foundation

public class ScrapedChapter: Identifiable {
    public var id: String
    public var name: String
    public var url: URL
    public var index: UInt16
    public var volume: String

    // Pages belonging to this chapter
    public var pages: [ScrapedPage]

    // The manga this chapter belongs to
    weak public var manga: ScrapedManga?
    
    public init(
        name: String,
        url: URL,
        index: UInt16,
        id: String,
        volume: String,
        pages: [ScrapedPage] = [],
        manga: ScrapedManga? = nil
    ) {
        self.name = name
        self.url = url
        self.index = index
        self.id = id
        self.volume = volume
        self.pages = pages
        self.manga = manga
    }
}
