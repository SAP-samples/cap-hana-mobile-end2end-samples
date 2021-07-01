// # Proxy Compiler 20.7.9

import Foundation
import SAPOData

internal class EntityContainerStaticResolver {
    static func resolve() {
        EntityContainerStaticResolver.resolve1()
    }

    private static func resolve1() {
        _ = EntityContainerMetadata.EntityTypes.members
        _ = EntityContainerMetadata.EntityTypes.membersSkills
        _ = EntityContainerMetadata.EntityTypes.skill
        _ = EntityContainerMetadata.EntityTypes.socialMediaPresence
        _ = EntityContainerMetadata.EntitySets.members
        _ = EntityContainerMetadata.EntitySets.membersSkills
        _ = EntityContainerMetadata.EntitySets.skill
        _ = EntityContainerMetadata.EntitySets.socialMediaPresence
        _ = Members.id
        _ = Members.createdAt
        _ = Members.createdBy
        _ = Members.modifiedAt
        _ = Members.modifiedBy
        _ = Members.firstName
        _ = Members.lastName
        _ = Members.title
        _ = Members.focusArea
        _ = Members.skills
        _ = Members.socialMedia
        _ = Members.description
        _ = MembersSkills.id
        _ = MembersSkills.createdAt
        _ = MembersSkills.createdBy
        _ = MembersSkills.modifiedAt
        _ = MembersSkills.modifiedBy
        _ = MembersSkills.memberID
        _ = MembersSkills.skillID
        _ = MembersSkills.memberIDID
        _ = MembersSkills.skillIDID
        _ = Skill.id
        _ = Skill.createdAt
        _ = Skill.createdBy
        _ = Skill.modifiedAt
        _ = Skill.modifiedBy
        _ = Skill.name
        _ = Skill.member
        _ = SocialMediaPresence.id
        _ = SocialMediaPresence.createdAt
        _ = SocialMediaPresence.createdBy
        _ = SocialMediaPresence.modifiedAt
        _ = SocialMediaPresence.modifiedBy
        _ = SocialMediaPresence.name
        _ = SocialMediaPresence.url
        _ = SocialMediaPresence.member
        _ = SocialMediaPresence.memberID
    }
}
