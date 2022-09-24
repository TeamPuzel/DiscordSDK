//
//  DiscordSDK.swift
//
//  Created by TeamPuzel
//  24/09/2022
//

//import CDiscordSDK

// MARK: Enums

public enum DSResult {
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

public enum DSCreateFlags {
    case `default`
    case noRequireDiscord
}

public enum DSLogLevel {
    case error
    case warning
    case info
    case debug
}

public enum DSUserFlag {
    case partner
    case hypeSquadevents
    case hypeSquadHouse1
    case hypeSquadHouse2
    case hypeSquadHouse3
}

public enum DSPremiumType {
    case none
    case tier1
    case tier2
}

public enum DSImageType {
    case user
}

public enum DSPartyPrivacy {
    case `private`
    case `public`
}

public enum DSActivityType {
    case playing
    case streaming
    case listening
    case watching
}

public enum DSActionType {
    case join
    case spectate
}

public enum DSSupportedPlatform {
    case desktop
    case android
    case iOS
}

public enum DSJoinRequestReply {
    case no
    case yes
    case ignore
}

public enum DSStatus {
    case offline
    case online
    case idle
    case doNotDisturb
}

public enum DSRelationshipType {
    case none
    case friend
    case blocked
    case pendingIncoming
    case pendingOutgoing
    case implicit
}

public enum DSLobbyType {
    case `private`
    case `public`
}

public enum DSSearchComparison {
    case lessThanOrEqual
    case lessThan
    case equal
    case greaterThan
    case greaterThanOrEqual
    case notEqual
}

public enum DSSearchCast {
    case string
    case number
}

public enum DSSearchDistance {
    case local
    case `default`
    case extended
    case global
}

public enum DSKeyVariant {
    case normal
    case right
    case left
}

public enum DSMouseButton {
    case left
    case middle
    case right
}

public enum DSEntitlementType {
    case purchase
    case premiumSubscription
    case developerGift
    case testModePurchase
    case freePurchase
    case userGift
    case premiumPurchase
}

public enum DSSkuType {
    case application
    case dlc
    case consumable
    case bundle
}

public enum DSInputModeType {
    case voiceActivity
    case pushToTalk
}

// MARK: Typealiae

public typealias DSClientID = Int64

public typealias DSVersion = Int32

public typealias DSSnowflake = Int64

public typealias DSTimestamp = Int64

public typealias DSUserID = DSSnowflake

public typealias DSLocale = String

public typealias DSBranch = String

public typealias DSLobbyID = DSSnowflake

public typealias DSLobbySecret = String

public typealias DSMetadataKey = String

public typealias DSMetadataValue = String

public typealias DSNetworkPeerID = UInt64

public typealias DSNetworkChannelID = UInt8

public typealias DSPath = String

public typealias DSDateTime = String


// MARK: Structures

public struct DSUser {
    let id: DSUserID
    let username: String
    let discriminator: String
    let avatar: String
    let isBot: Bool
}

public struct DSOAuth2Token {
    let accessToken: String
    let scopes: String
    let expires: DSTimestamp
}

public struct DSImageHandle {
    let type: DSImageType
    let id: Int64
    let size: UInt32
}

public struct DSImageDimensions {
    let width: UInt32
    let height: UInt32
}

public struct DSActivityTimestamps {
    let start: DSTimestamp
    let end: DSTimestamp
}

public struct DSActivityAssets {
    let largeImage: String
    let largeText: String
    let smallImage: String
    let smallText: String
}

public struct DSPartySize {
    let currentSize: Int32
    let maxSize: Int32
}

public struct DSActivityParty {
    let id: String
    let size: DSPartySize
    let privacy: DSPartyPrivacy
}

public struct DSActivitySecrets {
    let match: String
    let join: String
    let spectate: String
}

public struct DSActivity {
    let type: DSActionType
    let applicationID: Int64
    let name: String
    let state: String
    let details: String
    let timestamps: DSTimestamp
    let assets: DSActivityAssets
    let party: DSActivityParty
    let secrets: DSActivitySecrets
    let instance: Bool
    let supportedPlatforms: UInt32
}

public struct DSPresence {
    let status: DSStatus
    let activity: DSActivity
}

public struct DSRelationship {
    let type: DSRelationshipType
    let user: DSUser
    let presence: DSPresence
}

public struct DSLobby {
    let id: DSLobbyID
    let type: DSLobbyType
    let ownerID: DSUserID
    let secret: DSLobbySecret
    let capacity: UInt32
    let isLocked: Bool
}

public struct DSImeUnderline {
    let from: Int32
    let to: Int32
    let color: UInt32
    let backgroundColor: UInt32
    let isThick: Bool
}

public struct DSRect {
    let left: Int32
    let top: Int32
    let right: Int32
    let bottom: Int32
}

public struct DSFileStat {
    let filename: String
    let size: UInt64
    let lastModified: UInt64
}

public struct DSEntitlement {
    let id: DSSnowflake
    let type: DSEntitlementType
    let skuID: DSSnowflake
}

public struct DSSkuPrice {
    let amount: UInt32
    let currency: String
}

public struct DSSku {
    let id: DSSnowflake
    let type: DSSkuType
    let name: String
    let price: DSSkuPrice
}

public struct DSInputMode {
    let type: DSInputModeType
    let shortcut: String
}

public struct DSUserAchievement {
    let userID: DSSnowflake
    let achievementID: DSSnowflake
    let percentComplete: UInt8
    let unlockedAt: DSDateTime
}
