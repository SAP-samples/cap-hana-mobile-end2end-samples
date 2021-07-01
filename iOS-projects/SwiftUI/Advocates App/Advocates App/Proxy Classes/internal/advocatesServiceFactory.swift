//# xsc 20.7.9

import Foundation
import SAPOData

internal class advocatesServiceFactory {
    static func registerAll() throws -> Void {
        advocatesServiceMetadata.EntityTypes.member.registerFactory(ObjectFactory.with(create: { Member(withDefaults: false) }, sparse: { m in Member(withDefaults: false, withIndexMap: m) }, decode: { d in try Member(from: d) } ))
        advocatesServiceMetadata.EntityTypes.membersSkills.registerFactory(ObjectFactory.with(create: { MembersSkills(withDefaults: false) }, sparse: { m in MembersSkills(withDefaults: false, withIndexMap: m) }, decode: { d in try MembersSkills(from: d) } ))
        advocatesServiceMetadata.EntityTypes.skill.registerFactory(ObjectFactory.with(create: { Skill(withDefaults: false) }, sparse: { m in Skill(withDefaults: false, withIndexMap: m) }, decode: { d in try Skill(from: d) } ))
        advocatesServiceMetadata.EntityTypes.socialMediaPresence.registerFactory(ObjectFactory.with(create: { SocialMediaPresence(withDefaults: false) }, sparse: { m in SocialMediaPresence(withDefaults: false, withIndexMap: m) }, decode: { d in try SocialMediaPresence(from: d) } ))
        advocatesServiceStaticResolver.resolve()
    }
}
