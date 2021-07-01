//# xsc 20.7.9

import Foundation
import SAPOData

public class advocatesServiceMetadata {
    private static var document_: CSDLDocument = advocatesServiceMetadata.resolve()

    public static let lock: MetadataLock = xs_immortalize(MetadataLock())

    public static var document: CSDLDocument {
        get {
            objc_sync_enter(advocatesServiceMetadata.self)
            defer { objc_sync_exit(advocatesServiceMetadata.self); }
            do {
                return advocatesServiceMetadata.document_
            }
        }
        set(value) {
            objc_sync_enter(advocatesServiceMetadata.self)
            defer { objc_sync_exit(advocatesServiceMetadata.self); }
            do {
                advocatesServiceMetadata.document_ = value
            }
        }
    }

    private static func resolve() -> CSDLDocument {
        try! advocatesServiceFactory.registerAll()
        advocatesServiceMetadataParser.parsed.hasGeneratedProxies = true
        return advocatesServiceMetadataParser.parsed
    }

    public class EntityTypes {
        private static var member_: EntityType = advocatesServiceMetadataParser.parsed.entityType(withName: "AdvocatesService.Member")

        private static var membersSkills_: EntityType = advocatesServiceMetadataParser.parsed.entityType(withName: "AdvocatesService.Members_Skills")

        private static var skill_: EntityType = advocatesServiceMetadataParser.parsed.entityType(withName: "AdvocatesService.Skill")

        private static var socialMediaPresence_: EntityType = advocatesServiceMetadataParser.parsed.entityType(withName: "AdvocatesService.SocialMediaPresence")

        public static var member: EntityType {
            get {
                objc_sync_enter(advocatesServiceMetadata.EntityTypes.self)
                defer { objc_sync_exit(advocatesServiceMetadata.EntityTypes.self); }
                do {
                    return advocatesServiceMetadata.EntityTypes.member_
                }
            }
        set(value) {
            objc_sync_enter(advocatesServiceMetadata.EntityTypes.self)
            defer { objc_sync_exit(advocatesServiceMetadata.EntityTypes.self); }
            do {
                advocatesServiceMetadata.EntityTypes.member_ = value
            }
        }
        }

        public static var membersSkills: EntityType {
            get {
                objc_sync_enter(advocatesServiceMetadata.EntityTypes.self)
                defer { objc_sync_exit(advocatesServiceMetadata.EntityTypes.self); }
                do {
                    return advocatesServiceMetadata.EntityTypes.membersSkills_
                }
            }
        set(value) {
            objc_sync_enter(advocatesServiceMetadata.EntityTypes.self)
            defer { objc_sync_exit(advocatesServiceMetadata.EntityTypes.self); }
            do {
                advocatesServiceMetadata.EntityTypes.membersSkills_ = value
            }
        }
        }

        public static var skill: EntityType {
            get {
                objc_sync_enter(advocatesServiceMetadata.EntityTypes.self)
                defer { objc_sync_exit(advocatesServiceMetadata.EntityTypes.self); }
                do {
                    return advocatesServiceMetadata.EntityTypes.skill_
                }
            }
        set(value) {
            objc_sync_enter(advocatesServiceMetadata.EntityTypes.self)
            defer { objc_sync_exit(advocatesServiceMetadata.EntityTypes.self); }
            do {
                advocatesServiceMetadata.EntityTypes.skill_ = value
            }
        }
        }

        public static var socialMediaPresence: EntityType {
            get {
                objc_sync_enter(advocatesServiceMetadata.EntityTypes.self)
                defer { objc_sync_exit(advocatesServiceMetadata.EntityTypes.self); }
                do {
                    return advocatesServiceMetadata.EntityTypes.socialMediaPresence_
                }
            }
        set(value) {
            objc_sync_enter(advocatesServiceMetadata.EntityTypes.self)
            defer { objc_sync_exit(advocatesServiceMetadata.EntityTypes.self); }
            do {
                advocatesServiceMetadata.EntityTypes.socialMediaPresence_ = value
            }
        }
        }
    }

    public class EntitySets {
        private static var member_: EntitySet = advocatesServiceMetadataParser.parsed.entitySet(withName: "Member")

        private static var membersSkills_: EntitySet = advocatesServiceMetadataParser.parsed.entitySet(withName: "Members_Skills")

        private static var skill_: EntitySet = advocatesServiceMetadataParser.parsed.entitySet(withName: "Skill")

        private static var socialMediaPresence_: EntitySet = advocatesServiceMetadataParser.parsed.entitySet(withName: "SocialMediaPresence")

        public static var member: EntitySet {
            get {
                objc_sync_enter(advocatesServiceMetadata.EntitySets.self)
                defer { objc_sync_exit(advocatesServiceMetadata.EntitySets.self); }
                do {
                    return advocatesServiceMetadata.EntitySets.member_
                }
            }
        set(value) {
            objc_sync_enter(advocatesServiceMetadata.EntitySets.self)
            defer { objc_sync_exit(advocatesServiceMetadata.EntitySets.self); }
            do {
                advocatesServiceMetadata.EntitySets.member_ = value
            }
        }
        }

        public static var membersSkills: EntitySet {
            get {
                objc_sync_enter(advocatesServiceMetadata.EntitySets.self)
                defer { objc_sync_exit(advocatesServiceMetadata.EntitySets.self); }
                do {
                    return advocatesServiceMetadata.EntitySets.membersSkills_
                }
            }
        set(value) {
            objc_sync_enter(advocatesServiceMetadata.EntitySets.self)
            defer { objc_sync_exit(advocatesServiceMetadata.EntitySets.self); }
            do {
                advocatesServiceMetadata.EntitySets.membersSkills_ = value
            }
        }
        }

        public static var skill: EntitySet {
            get {
                objc_sync_enter(advocatesServiceMetadata.EntitySets.self)
                defer { objc_sync_exit(advocatesServiceMetadata.EntitySets.self); }
                do {
                    return advocatesServiceMetadata.EntitySets.skill_
                }
            }
        set(value) {
            objc_sync_enter(advocatesServiceMetadata.EntitySets.self)
            defer { objc_sync_exit(advocatesServiceMetadata.EntitySets.self); }
            do {
                advocatesServiceMetadata.EntitySets.skill_ = value
            }
        }
        }

        public static var socialMediaPresence: EntitySet {
            get {
                objc_sync_enter(advocatesServiceMetadata.EntitySets.self)
                defer { objc_sync_exit(advocatesServiceMetadata.EntitySets.self); }
                do {
                    return advocatesServiceMetadata.EntitySets.socialMediaPresence_
                }
            }
        set(value) {
            objc_sync_enter(advocatesServiceMetadata.EntitySets.self)
            defer { objc_sync_exit(advocatesServiceMetadata.EntitySets.self); }
            do {
                advocatesServiceMetadata.EntitySets.socialMediaPresence_ = value
            }
        }
        }
    }
}
