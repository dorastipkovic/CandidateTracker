import Foundation

struct CandidatesClient {

    func fetchCandidates() async throws -> [CandidateResponse?] {
        // mock 2s loading time
        try await Task.sleep(nanoseconds: 2_000_000_000)

        let candidates = [
            CandidateResponse(id: 1, name: "Anna", certification: "Certified", grade: .junior),
            nil,
            CandidateResponse(id: 2, name: "Barry", certification: "Certified", grade: .mid),
            nil,
            CandidateResponse(id: 3, name: "Camilla", certification: "Certified", grade: .senior),
            CandidateResponse(id: 4, name: "Daniel", certification: nil, grade: .junior),
            CandidateResponse(id: 5, name: "Emmett", certification: "Not certified", grade: .mid),
            CandidateResponse(id: 6, name: "Fido", certification: nil, grade: .senior),
            CandidateResponse(id: 7, name: "Greg", certification: "Not certified", grade: .senior),
            CandidateResponse(id: 8, name: "Hannah", certification: nil, grade: .mid)
        ]

        let success = Bool.random()

        guard success else { throw URLError(.badServerResponse) }

        return candidates
    }

}
