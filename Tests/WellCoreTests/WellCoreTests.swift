import Testing
@testable import WellCore
import OpenAPIRuntime
import OpenAPIURLSession

@Test func queryManga() async throws {
    let client = Client(
        serverURL: try Servers.Server1.url(),
        transport: URLSessionTransport()
    )
    
    let response = try await client.queryManga(query: .init(title: "one piece"))
    
    let response3 = try await client.getMangaFeed(path: .init(id: try response.ok.body.json.data[0].id))
    let chId = try response3.ok.body.json.data[0].id
    
    let response4 = try await client.getAtHomeServer(path: .init(chapterId: chId)).ok.body.json
    
    let baseURL = response4.baseUrl
    let chapter = response4.chapter
    let hash = chapter.hash
    
    for (idx, page) in chapter.data.enumerated() {
        print("\(idx): \(baseURL)/data/\(hash)/\(page)")
    }
}
