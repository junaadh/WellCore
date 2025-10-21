//
//  Html.swift
//  WellCore
//
//  Created by Moosa Junad on 21/10/2025.
//

import Foundation

extension String {
    func html() async throws -> String {
        guard let url = URL(string: self) else { throw URLError(.badURL) }
        
        let (data, _) = try await URLSession.shared.data(from: url)
        return String(decoding: data, as: UTF8.self)
    }
}

extension URL {
    func html() async throws -> String {
        let (data, _) = try await URLSession.shared.data(from: self)
        return String(decoding: data, as: UTF8.self)
    }
}
