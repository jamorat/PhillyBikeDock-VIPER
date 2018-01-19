import Foundation
import RxSwift

struct BikeDockApiService {
    
    static func fetchBikeDock() -> Observable<BikeDock> {
        return Observable<BikeDock>.create { observer -> Disposable in
            var task = URLSessionDataTask()
            
            func endpointForBikeDocks() -> String {
                return "https://api.phila.gov/bike-share-stations/v1"
            }
            
            func getBikeDocks(completionHandler: @escaping (BikeDock?, Error?) -> Void) {
                let endpoint = endpointForBikeDocks()
                guard let url = URL(string: endpoint) else {
                    print("Error: cannot create URL")
                    let error = BackendError.urlError(reason: "Could not construct URL")
                    completionHandler(nil, error)
                    return
                }
                let urlRequest = URLRequest(url: url)
                
                let session = URLSession.shared
                
                task = session.dataTask(with: urlRequest) {
                    (data, response, error) in
                    guard let responseData = data else {
                        print("Error: did not receive data")
                        completionHandler(nil, error)
                        return
                    }
                    guard error == nil else {
                        completionHandler(nil, error)
                        return
                    }
                    
                    let decoder = JSONDecoder()
                    do {
                        let todos = try decoder.decode(BikeDock.self, from: responseData)
                        completionHandler(todos, nil)
                    } catch {
                        print("error trying to convert data to JSON")
                        print(error)
                        completionHandler(nil, error)
                    }
                }
                task.resume()
                
            }
            
            getBikeDocks { (bikeDocks, error) in
                if let error = error {
                    print(error)
                    return
                }
                guard let bikeDocks = bikeDocks else {
                    print("error getting all bikedocks: result is nil")
                    return
                }
                observer.onNext(bikeDocks)
                observer.onCompleted()
                debugPrint(bikeDocks)
            }
            
            return Disposables.create(with: {
                task.cancel()
            })
        }
    }
}


