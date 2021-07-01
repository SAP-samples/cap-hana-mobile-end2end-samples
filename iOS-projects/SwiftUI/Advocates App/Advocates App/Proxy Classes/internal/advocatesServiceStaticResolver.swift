//# xsc 20.7.9

import Foundation
import SAPOData

internal class advocatesServiceStaticResolver {
    static func resolve() -> Void {
        advocatesServiceStaticResolver.resolve1()
    }

    private static func resolve1() -> Void {
        _ = advocatesServiceMetadata.EntityTypes.member
        _ = advocatesServiceMetadata.EntityTypes.membersSkills
        _ = advocatesServiceMetadata.EntityTypes.skill
        _ = advocatesServiceMetadata.EntityTypes.socialMediaPresence
        _ = advocatesServiceMetadata.EntitySets.member
        _ = advocatesServiceMetadata.EntitySets.membersSkills
        _ = advocatesServiceMetadata.EntitySets.skill
        _ = advocatesServiceMetadata.EntitySets.socialMediaPresence
        _ = Member.id
        _ = Member.createdAt
        _ = Member.createdBy
        _ = Member.modifiedAt
        _ = Member.modifiedBy
        _ = Member.firstName
        _ = Member.lastName
        _ = Member.title
        _ = Member.focusArea
        _ = Member.skills
        _ = Member.socialMedia
        _ = Member.description
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
