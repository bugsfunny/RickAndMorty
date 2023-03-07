//
//  RMCharacterViewController.swift
//  RickAndMorty
//
//  Created by JeanSeb on 06/03/2023.
//

import UIKit

final class RMCharacterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "Characters"
        
//        let request = RMRequest(endpoint: RMEndpoint.character, queryParameters: [URLQueryItem(name: "name", value: "rick")])
        
        RMService.shared.execute(.listCharactersRequest, expecting: RMGetAllCharactersResponse.self, completion: { result in
            switch(result){
            case .success(let model):
                print(String(describing: model))
            case .failure(let error):
                print(String(describing: error))
            }
        })
    }
}
