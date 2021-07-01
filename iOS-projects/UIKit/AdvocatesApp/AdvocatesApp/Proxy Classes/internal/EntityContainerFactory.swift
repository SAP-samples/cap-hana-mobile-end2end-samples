// # Proxy Compiler 20.7.9

import Foundation
import SAPOData

internal class EntityContainerFactory {
    static func registerAll() throws {
        EntityContainerMetadata.EntityTypes.member.registerFactory(ObjectFactory.with(create: { Member(withDefaults: false) }, sparse: { m in Member(withDefaults: false, withIndexMap: m) }, decode: { d in try Member(from: d) }))
        EntityContainerMetadata.EntityTypes.membersSkills.registerFactory(ObjectFactory.with(create: { MembersSkills(withDefaults: false) }, sparse: { m in MembersSkills(withDefaults: false, withIndexMap: m) }, decode: { d in try MembersSkills(from: d) }))
        EntityContainerMetadata.EntityTypes.skill.registerFactory(ObjectFactory.with(create: { Skill(withDefaults: false) }, sparse: { m in Skill(withDefaults: false, withIndexMap: m) }, decode: { d in try Skill(from: d) }))
        EntityContainerMetadata.EntityTypes.socialMediaPresence.registerFactory(ObjectFactory.with(create: { SocialMediaPresence(withDefaults: false) }, sparse: { m in SocialMediaPresence(withDefaults: false, withIndexMap: m) }, decode: { d in try SocialMediaPresence(from: d) }))
        EntityContainerStaticResolver.resolve()
    }
}
