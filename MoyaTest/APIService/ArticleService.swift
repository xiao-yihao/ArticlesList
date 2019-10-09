
import Moya
import RxMoya

enum ArticleService {
    case articles
    
}

extension ArticleService: TargetType {
    
    var baseURL: URL {
        switch self {
        case .articles:
            return URL(string: "http://104.198.124.217/employment/articles.json")!
        }
    }
    
    var path: String {
        switch self {
         case .articles:
            return ""
        }
    }
    
    var method: Moya.Method {
        switch self {
         case .articles:
            return .get
        }
    }
    var task: Task {
        switch self {
         case .articles:
            return .requestPlain
        }
    }
    
    
    var sampleData: Data {
        switch self {
        case .articles:
            return "".data(using: String.Encoding.utf8)!
        }
    }
    
    var headers: [String : String]? {
        return ["Content-Type":"application/json;charset=utf-8"]
    }
    
}
