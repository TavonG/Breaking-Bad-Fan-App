//
//  MainView.swift
//  BreakingBadApp
//
//  Created by Tavon Gibbs on 8/10/21.
//

import SwiftUI

struct Image: Codable {
    let imageData: Data?
    
    init(withImage image: UIImage) {
        self.imageData = image.pngData()
    }
    
    func getImage() -> UIImage? {
        guard let imageData = self.imageData else {
            return nil
        }
        
        let image = UIImage(data: imageData)
        
        return image
    }
}

struct Character: Codable {
    let id: Int
    let name: String
    let img: Image
    let status: String
    let nickname: String
    
    
}

class ViewModel: ObservableObject {
    
    @Published var characters: [Character] = []
    
    func fetch() {
        guard let url = URL(string: "https://www.breakingbadapi.com/api/characters") else {
            return
            
        }
        
        let task = URLSession.shared.dataTask(with: url) { [weak self] data, _,
            error in
            guard let data = data, error == nil else {
                return
            }
            
            //convert json
            do {
                let characters = try JSONDecoder().decode([Character].self, from: data)
                DispatchQueue.main.async {
                    self?.characters = characters
                    
                }
            }
            catch {
                print(error)
            }
        }
        
        task.resume()
    }
}

struct CharacterView: View {
    
    let Columns: [GridItem] = [
        GridItem(.fixed(50), spacing: nil, alignment: nil),
        GridItem(.fixed(50), spacing: nil, alignment: nil),
        GridItem(.fixed(50), spacing: nil, alignment: nil)
    
    
    ]
    
    var body: some View {
        LazyVGrid(columns: Columns) {
            ForEach(0..<27) { index in
                Rectangle()
                    .frame(height: 25)
                
            }



        }
        
        
        
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        CharacterView()
    }
}
