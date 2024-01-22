//
//  File.swift
//  
//
//  Created by Magistra Apta on 22/01/24.
//

import Foundation

public struct GamesMapper {
    
    static func mapGameResponsesToEntities(
      input gameResponses: [GameModuleEntryResponse]
    ) -> [GameModuleEntity] {
      return gameResponses.map { result in
        let newGame = GameModuleEntity()
          newGame.id = result.id
          newGame.name = result.name
          newGame.slug = result.slug
          newGame.backgroundImage = result.backgroundImage
          newGame.released = result.released
          newGame.rating = result.rating
        return newGame
      }
    }

    static func mapGameEntitiesToDomains(
      input gameEntities: [GameModuleEntity]
    ) -> [GameModuleDomain] {
      return gameEntities.map { result in
          return GameModuleDomain(id: result.id, slug: result.slug, name: result.name, released: result.released, backgroundImage: result.backgroundImage, rating: result.rating, favorite: result.favorite)
      }
    }

    static func mapGameResponsesToDomains(
      input categoryResponses: [GameModuleEntryResponse]
    ) -> [GameModuleDomain] {

      return categoryResponses.map { result in
          return GameModuleDomain(id: result.id, slug: result.slug, name: result.name, released: result.released, backgroundImage: result.backgroundImage, rating: result.rating)
          
      }
    }
    
    static func mapEntityToDomain(input gameEntity: GameModuleEntity) -> GameModuleDomain {
        return GameModuleDomain(id: gameEntity.id, slug: gameEntity.slug, name: gameEntity.name, released: gameEntity.released, backgroundImage: gameEntity.backgroundImage, rating: gameEntity.rating, favorite: gameEntity.favorite)
    }
}
