//
//  Source.swift
//  WellCore
//
//  Created by Moosa Junad on 21/10/2025.
//

public protocol Source {
    var name: String { get }
    var id: String { get }
    
    func search(query title: String) -> async throws -> [ScrapedManga]
    func chapters(of manga: ScrapedManga) -> async throws -> [ScrapedChapter]
    func pages(of chapter: ScrapedChapter) -> async throws -> [ScrapedPage]
}
