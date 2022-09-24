//
//  DiscordSDK.swift
//
//  Created by TeamPuzel
//  24/09/2022
//

public enum Result {
    case ok
    case serviceUnavailable
    case invalidVersion
    case lockFailed
    case internalerror
    case invalidPayload
    case invalidCommand
    case invalidPermissions
    case notFetched
    case notFound
    case conflict
    case invalidSecret
    case invalidJoinSecret
    case noElegibleActivity
    case invalidInvite
    case notAuthenticated
    case invalidAccessToken
    case applicationMismatch
    case invalidDataURL
    case invalidBase64
    case notFiltered
    case lobbyFull
    case invalidLobbySecret
    case invalidFilename
    case invalidFileSize
    case invalidEntitlement
    case notInstalled
    case notRunning
    case insufficientBuffer
    case purchaseCancelled
    case invalidGuild
    case invalidEvent
    case invalidChannel
    case invalidOrigin
    case rateLimited
    case OAuth2Error
    case selectChannelTimeout
    case getGuildTimeout
    case selectVoiceForceRequired
    case captureShortcutAlreadyListening
    case unauthorizedForAchievement
    case invalidGiftCode
    case purchaseError
    case transactionAborted
    case drawingInitFailed
}

public enum CreateFlags {
    case `default`
    case noRequireDiscord
}

public enum LogLevel {
    case error
    case warning
    case info
    case debug
}

public enum UserFlag {
    case partner
    case hypeSquadevents
    case hypeSquadHouse1
    case hypeSquadHouse2
    case hypeSquadHouse3
}

public enum PremiumType {
    case none
    case tier1
    case tier2
}

public enum ImageType {
    case user
}

public enum PartyPrivacy {
    case `private`
    case `public`
}

public enum ActivityType {
    case playing
    case streaming
    case listening
    case watching
}

public enum ActionType {
    case join
    case spectate
}

public enum SupportedPlatform {
    case desktop
    case android
    case iOS
}

public enum JoinRequestReply {
    case no
    case yes
    case ignore
}

public enum Status {
    case offline
    case online
    case idle
    case doNotDisturb
}

public enum RelationshipType {
    case none
    case friend
    case blocked
    case pendingIncoming
    case pendingOutgoing
    case implicit
}

public enum LobbyType {
    case `private`
    case `public`
}

public enum SearchComparison {
    case lessThanOrEqual
    case lessThan
    case equal
    case greaterThan
    case greaterThanOrEqual
    case notEqual
}

public enum SearchCast {
    case string
    case number
}

public enum SearchDistance {
    case local
    case `default`
    case extended
    case global
}

public enum KeyVariant {
    case normal
    case right
    case left
}

public enum MouseButton {
    case left
    case middle
    case right
}

public enum EntitlementType {
    case purchase
    case premiumSubscription
    case developerGift
    case testModePurchase
    case freePurchase
    case userGift
    case premiumPurchase
}

public enum SkuType {
    case application
    case dlc
    case consumable
    case bundle
}

public enum InputMode {
    case voiceActivity
    case pushToTalk
}
