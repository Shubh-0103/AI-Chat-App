//
//  AvatarModels.swift
//  AIChatCourse
//
//  Created by SHUBH JAIN on 27/05/26.
//

import Foundation

struct AvatarModels {
    let avatarId: String
    let name: String?
    let character: CharacterOption?
    let actions: CharacterActions?
    let profileImageName: String?
    let authorId: String?
    let location: CharacterLocation?
    let dateCreated: Date?
    
    init(
        avatarId: String,
        name: String?,
        profileImageName: String?,
        authorId: String?,
        dateCreated: Date?,
        character: CharacterOption?,
        actions: CharacterActions?,
        location: CharacterLocation?
    ) {
        self.avatarId = avatarId
        self.name = name
        self.profileImageName = profileImageName
        self.authorId = authorId
        self.dateCreated = dateCreated
        self.character = character
        self.actions = actions
        self.location = location
    }
    
     static var mocks: [AvatarModels]  { [
        AvatarModels(
            avatarId: UUID().uuidString,
            name: "Alpha",
            profileImageName: Constants.randomImageUrl,
            authorId: UUID().uuidString,
            dateCreated: .now,
            character: .cat,
            actions: .smiling,
            location: .park
        ),
        AvatarModels(
            avatarId: UUID().uuidString,
            name: "Beta",
            profileImageName: Constants.randomImageUrl,
            authorId: UUID().uuidString,
            dateCreated: .now,
            character: .dog,
            actions: .dancing,
            location: .forest
        ),
        AvatarModels(
            avatarId: UUID().uuidString,
            name: "Gama",
            profileImageName: Constants.randomImageUrl,
            authorId: UUID().uuidString,
            dateCreated: .now,
            character: .alien,
            actions: .crying,
            location: .mountain
        ),
        AvatarModels(
            avatarId: UUID().uuidString,
            name: "Delta",
            profileImageName: Constants.randomImageUrl,
            authorId: UUID().uuidString,
            dateCreated: .now,
            character: .man,
            actions: .laughing,
            location: .street
        )
    ] }
    
     var characterDescription: String {
        ActionDescriptionBuilder(avatarModel: self).characterDescription
    }

}

enum CharacterOption {
    case man, woman, alien, dog, cat
    
    static var defaultValue: CharacterOption { .man }
}

enum CharacterActions {
    case smiling, crying, laughing, drinking, dancing, sleeping, shopping
    
    static var defaultValue: CharacterActions { .smiling }
}

enum CharacterLocation {
    case park, beach, city, forest, home, mall, mountain, street, subway
    
    static var defaultValue: CharacterLocation { .park }
}

struct ActionDescriptionBuilder {
    let character: CharacterOption
    let actions: CharacterActions
    let location: CharacterLocation
    
    init(avatarModel: AvatarModels) {
        let character = avatarModel.character ?? CharacterOption.defaultValue
        let actions = avatarModel.actions ?? CharacterActions.defaultValue
        let location = avatarModel.location ?? CharacterLocation.defaultValue
        
        self.character = character
        self.actions = actions
        self.location = location
    }
    
    var characterDescription: String {
        "A \(character) that is \(actions) in the \(location)"
    }
}
