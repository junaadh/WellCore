//
//  ScrapedPage.swift
//  WellCore
//
//  Created by Moosa Junad on 21/10/2025.
//

import Foundation

public class ScrapedPage: Identifiable {
    public var id: String
    public var url: URL
    public var index: UInt16
    public var extensionName: String
    
    // Chapter this page belongs to
    weak public var chapter: ScrapedChapter?
    
    public init(
        url: URL,
        index: UInt16,
        extensionName: String,
        chapter: ScrapedChapter? = nil
    ) {
        self.url = url
        self.index = index
        self.extensionName = extensionName
        self.chapter = chapter
        self.id = "\(index)-\(url.absoluteString)"
    }
}

