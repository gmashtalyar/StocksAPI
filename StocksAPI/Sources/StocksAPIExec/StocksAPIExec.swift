import Foundation
import StocksAPI




@main
struct StocksAPIExec {
    
    static func main() async {
        let (data, _) = try! await URLSession.shared.data(from: URL(string: "https://query1.finance.yahoo.com/v7/finance/quote?symbols=AAPL,MSFT,GOOG,TSLA&crumb=exlZTWSllOb")!)
        
        let quoteResponse = try! JSONDecoder().decode(QuoteResponse.self, from: data)
        
        print(quoteResponse)
        
    }
    
    
    
    
    
    

}




