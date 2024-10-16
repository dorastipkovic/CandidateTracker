struct CandidateResponse: Decodable {

    let id: Int
    let name: String
    let certification: String?
    let grade: CandidateGrade

}

enum CandidateGrade: Decodable {

    case junior
    case mid
    case senior

}
