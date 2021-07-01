// # Proxy Compiler 20.7.9

import Foundation
import SAPOData

public class EntityContainerMetadata {
    private static var document_: CSDLDocument = EntityContainerMetadata.resolve()

    public static let lock: MetadataLock = xs_immortalize(MetadataLock())

    public static var document: CSDLDocument {
        get {
            objc_sync_enter(EntityContainerMetadata.self)
            defer { objc_sync_exit(EntityContainerMetadata.self) }
            do {
                return EntityContainerMetadata.document_
            }
        }
        set(value) {
            objc_sync_enter(EntityContainerMetadata.self)
            defer { objc_sync_exit(EntityContainerMetadata.self) }
            do {
                EntityContainerMetadata.document_ = value
            }
        }
    }

    private static func resolve() -> CSDLDocument {
        try! EntityContainerFactory.registerAll()
        EntityContainerMetadataParser.parsed.hasGeneratedProxies = true
        return EntityContainerMetadataParser.parsed
    }

    public class EntityTypes {
        private static var members_: EntityType = EntityContainerMetadataParser.parsed.entityType(withName: "AdvocatesService.Members")

        private static var membersSkills_: EntityType = EntityContainerMetadataParser.parsed.entityType(withName: "AdvocatesService.Members_Skills")

        private static var skill_: EntityType = EntityContainerMetadataParser.parsed.entityType(withName: "AdvocatesService.Skill")

        private static var socialMediaPresence_: EntityType = EntityContainerMetadataParser.parsed.entityType(withName: "AdvocatesService.SocialMediaPresence")

        public static var members: EntityType {
            get {
                objc_sync_enter(EntityContainerMetadata.EntityTypes.self)
                defer { objc_sync_exit(EntityContainerMetadata.EntityTypes.self) }
                do {
                    return EntityContainerMetadata.EntityTypes.members_
                }
            }
            set(value) {
                objc_sync_enter(EntityContainerMetadata.EntityTypes.self)
                defer { objc_sync_exit(EntityContainerMetadata.EntityTypes.self) }
                do {
                    EntityContainerMetadata.EntityTypes.members_ = value
                }
            }
        }

        public static var membersSkills: EntityType {
            get {
                objc_sync_enter(EntityContainerMetadata.EntityTypes.self)
                defer { objc_sync_exit(EntityContainerMetadata.EntityTypes.self) }
                do {
                    return EntityContainerMetadata.EntityTypes.membersSkills_
                }
            }
            set(value) {
                objc_sync_enter(EntityContainerMetadata.EntityTypes.self)
                defer { objc_sync_exit(EntityContainerMetadata.EntityTypes.self) }
                do {
                    EntityContainerMetadata.EntityTypes.membersSkills_ = value
                }
            }
        }

        public static var skill: EntityType {
            get {
                objc_sync_enter(EntityContainerMetadata.EntityTypes.self)
                defer { objc_sync_exit(EntityContainerMetadata.EntityTypes.self) }
                do {
                    return EntityContainerMetadata.EntityTypes.skill_
                }
            }
            set(value) {
                objc_sync_enter(EntityContainerMetadata.EntityTypes.self)
                defer { objc_sync_exit(EntityContainerMetadata.EntityTypes.self) }
                do {
                    EntityContainerMetadata.EntityTypes.skill_ = value
                }
            }
        }

        public static var socialMediaPresence: EntityType {
            get {
                objc_sync_enter(EntityContainerMetadata.EntityTypes.self)
                defer { objc_sync_exit(EntityContainerMetadata.EntityTypes.self) }
                do {
                    return EntityContainerMetadata.EntityTypes.socialMediaPresence_
                }
            }
            set(value) {
                objc_sync_enter(EntityContainerMetadata.EntityTypes.self)
                defer { objc_sync_exit(EntityContainerMetadata.EntityTypes.self) }
                do {
                    EntityContainerMetadata.EntityTypes.socialMediaPresence_ = value
                }
            }
        }
    }

    public class EntitySets {
        private static var members_: EntitySet = EntityContainerMetadataParser.parsed.entitySet(withName: "Members")

        private static var membersSkills_: EntitySet = EntityContainerMetadataParser.parsed.entitySet(withName: "Members_Skills")

        private static var skill_: EntitySet = EntityContainerMetadataParser.parsed.entitySet(withName: "Skill")

        private static var socialMediaPresence_: EntitySet = EntityContainerMetadataParser.parsed.entitySet(withName: "SocialMediaPresence")

        public static var members: EntitySet {
            get {
                objc_sync_enter(EntityContainerMetadata.EntitySets.self)
                defer { objc_sync_exit(EntityContainerMetadata.EntitySets.self) }
                do {
                    return EntityContainerMetadata.EntitySets.members_
                }
            }
            set(value) {
                objc_sync_enter(EntityContainerMetadata.EntitySets.self)
                defer { objc_sync_exit(EntityContainerMetadata.EntitySets.self) }
                do {
                    EntityContainerMetadata.EntitySets.members_ = value
                }
            }
        }

        public static var membersSkills: EntitySet {
            get {
                objc_sync_enter(EntityContainerMetadata.EntitySets.self)
                defer { objc_sync_exit(EntityContainerMetadata.EntitySets.self) }
                do {
                    return EntityContainerMetadata.EntitySets.membersSkills_
                }
            }
            set(value) {
                objc_sync_enter(EntityContainerMetadata.EntitySets.self)
                defer { objc_sync_exit(EntityContainerMetadata.EntitySets.self) }
                do {
                    EntityContainerMetadata.EntitySets.membersSkills_ = value
                }
            }
        }

        public static var skill: EntitySet {
            get {
                objc_sync_enter(EntityContainerMetadata.EntitySets.self)
                defer { objc_sync_exit(EntityContainerMetadata.EntitySets.self) }
                do {
                    return EntityContainerMetadata.EntitySets.skill_
                }
            }
            set(value) {
                objc_sync_enter(EntityContainerMetadata.EntitySets.self)
                defer { objc_sync_exit(EntityContainerMetadata.EntitySets.self) }
                do {
                    EntityContainerMetadata.EntitySets.skill_ = value
                }
            }
        }

        public static var socialMediaPresence: EntitySet {
            get {
                objc_sync_enter(EntityContainerMetadata.EntitySets.self)
                defer { objc_sync_exit(EntityContainerMetadata.EntitySets.self) }
                do {
                    return EntityContainerMetadata.EntitySets.socialMediaPresence_
                }
            }
            set(value) {
                objc_sync_enter(EntityContainerMetadata.EntitySets.self)
                defer { objc_sync_exit(EntityContainerMetadata.EntitySets.self) }
                do {
                    EntityContainerMetadata.EntitySets.socialMediaPresence_ = value
                }
            }
        }
    }
}
