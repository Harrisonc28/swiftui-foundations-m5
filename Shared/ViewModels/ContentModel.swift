//
//  ContentModel.swift
//  LearningApp (iOS)
//
//  Created by Harrison Carroll on 26/07/2023.
//

import Foundation

class ContentModel: ObservableObject {
    
    @Published var modules = [Module]()
    @Published var styleData: Data?
    
    init() {
        
        getLocalData()
        
        
    }
    
    func getLocalData() {
        
        let jsonUrl = Bundle.main.url(forResource: "data", withExtension: "json")
        do {
        let jsonData = try Data(contentsOf: jsonUrl!)
       let jsonDecoder = JSONDecoder()
           
       let dataService = try jsonDecoder.decode([Module].self, from: jsonData)
       
            self.modules = dataService
    
        }
        catch {
            
            print(error)
        }
        
        
        let styleUrl = Bundle.main.url(forResource: "style", withExtension: "html")
        do {
            
            
            let styleData = try Data(contentsOf: styleUrl!)
            
            self.styleData = styleData
            
        } catch {
            
            
           print(error)
            
            
        }
        
    }
    
    
    
    
    
    
}
