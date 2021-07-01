//# xsc 20.7.9

import Foundation
import SAPOData

internal class advocatesServiceMetadataChanges {
    static func merge(metadata: CSDLDocument) -> Void {
        metadata.hasGeneratedProxies = true
        advocatesServiceMetadata.document = metadata
        advocatesServiceMetadataChanges.merge1(metadata: metadata)
        try! advocatesServiceFactory.registerAll()
    }

    private static func merge1(metadata: CSDLDocument) -> Void {
        _ = metadata
        if !advocatesServiceMetadata.EntityTypes.member.isRemoved {
            advocatesServiceMetadata.EntityTypes.member = metadata.entityType(withName: "AdvocatesService.Member")
        }
        if !advocatesServiceMetadata.EntityTypes.membersSkills.isRemoved {
            advocatesServiceMetadata.EntityTypes.membersSkills = metadata.entityType(withName: "AdvocatesService.Members_Skills")
        }
        if !advocatesServiceMetadata.EntityTypes.skill.isRemoved {
            advocatesServiceMetadata.EntityTypes.skill = metadata.entityType(withName: "AdvocatesService.Skill")
        }
        if !advocatesServiceMetadata.EntityTypes.socialMediaPresence.isRemoved {
            advocatesServiceMetadata.EntityTypes.socialMediaPresence = metadata.entityType(withName: "AdvocatesService.SocialMediaPresence")
        }
        if !advocatesServiceMetadata.EntitySets.member.isRemoved {
            advocatesServiceMetadata.EntitySets.member = metadata.entitySet(withName: "Member")
        }
        if !advocatesServiceMetadata.EntitySets.membersSkills.isRemoved {
            advocatesServiceMetadata.EntitySets.membersSkills = metadata.entitySet(withName: "Members_Skills")
        }
        if !advocatesServiceMetadata.EntitySets.skill.isRemoved {
            advocatesServiceMetadata.EntitySets.skill = metadata.entitySet(withName: "Skill")
        }
        if !advocatesServiceMetadata.EntitySets.socialMediaPresence.isRemoved {
            advocatesServiceMetadata.EntitySets.socialMediaPresence = metadata.entitySet(withName: "SocialMediaPresence")
        }
        if !Member.id.isRemoved {
            Member.id = advocatesServiceMetadata.EntityTypes.member.property(withName: "ID")
        }
        if !Member.createdAt.isRemoved {
            Member.createdAt = advocatesServiceMetadata.EntityTypes.member.property(withName: "createdAt")
        }
        if !Member.createdBy.isRemoved {
            Member.createdBy = advocatesServiceMetadata.EntityTypes.member.property(withName: "createdBy")
        }
        if !Member.modifiedAt.isRemoved {
            Member.modifiedAt = advocatesServiceMetadata.EntityTypes.member.property(withName: "modifiedAt")
        }
        if !Member.modifiedBy.isRemoved {
            Member.modifiedBy = advocatesServiceMetadata.EntityTypes.member.property(withName: "modifiedBy")
        }
        if !Member.firstName.isRemoved {
            Member.firstName = advocatesServiceMetadata.EntityTypes.member.property(withName: "firstName")
        }
        if !Member.lastName.isRemoved {
            Member.lastName = advocatesServiceMetadata.EntityTypes.member.property(withName: "lastName")
        }
        if !Member.title.isRemoved {
            Member.title = advocatesServiceMetadata.EntityTypes.member.property(withName: "title")
        }
        if !Member.focusArea.isRemoved {
            Member.focusArea = advocatesServiceMetadata.EntityTypes.member.property(withName: "focusArea")
        }
        if !Member.skills.isRemoved {
            Member.skills = advocatesServiceMetadata.EntityTypes.member.property(withName: "skills")
        }
        if !Member.socialMedia.isRemoved {
            Member.socialMedia = advocatesServiceMetadata.EntityTypes.member.property(withName: "socialMedia")
        }
        if !Member.description.isRemoved {
            Member.description = advocatesServiceMetadata.EntityTypes.member.property(withName: "description")
        }
        if !MembersSkills.id.isRemoved {
            MembersSkills.id = advocatesServiceMetadata.EntityTypes.membersSkills.property(withName: "ID")
        }
        if !MembersSkills.createdAt.isRemoved {
            MembersSkills.createdAt = advocatesServiceMetadata.EntityTypes.membersSkills.property(withName: "createdAt")
        }
        if !MembersSkills.createdBy.isRemoved {
            MembersSkills.createdBy = advocatesServiceMetadata.EntityTypes.membersSkills.property(withName: "createdBy")
        }
        if !MembersSkills.modifiedAt.isRemoved {
            MembersSkills.modifiedAt = advocatesServiceMetadata.EntityTypes.membersSkills.property(withName: "modifiedAt")
        }
        if !MembersSkills.modifiedBy.isRemoved {
            MembersSkills.modifiedBy = advocatesServiceMetadata.EntityTypes.membersSkills.property(withName: "modifiedBy")
        }
        if !MembersSkills.memberID.isRemoved {
            MembersSkills.memberID = advocatesServiceMetadata.EntityTypes.membersSkills.property(withName: "member_ID")
        }
        if !MembersSkills.skillID.isRemoved {
            MembersSkills.skillID = advocatesServiceMetadata.EntityTypes.membersSkills.property(withName: "skill_ID")
        }
        if !MembersSkills.memberIDID.isRemoved {
            MembersSkills.memberIDID = advocatesServiceMetadata.EntityTypes.membersSkills.property(withName: "member_ID_ID")
        }
        if !MembersSkills.skillIDID.isRemoved {
            MembersSkills.skillIDID = advocatesServiceMetadata.EntityTypes.membersSkills.property(withName: "skill_ID_ID")
        }
        if !Skill.id.isRemoved {
            Skill.id = advocatesServiceMetadata.EntityTypes.skill.property(withName: "ID")
        }
        if !Skill.createdAt.isRemoved {
            Skill.createdAt = advocatesServiceMetadata.EntityTypes.skill.property(withName: "createdAt")
        }
        if !Skill.createdBy.isRemoved {
            Skill.createdBy = advocatesServiceMetadata.EntityTypes.skill.property(withName: "createdBy")
        }
        if !Skill.modifiedAt.isRemoved {
            Skill.modifiedAt = advocatesServiceMetadata.EntityTypes.skill.property(withName: "modifiedAt")
        }
        if !Skill.modifiedBy.isRemoved {
            Skill.modifiedBy = advocatesServiceMetadata.EntityTypes.skill.property(withName: "modifiedBy")
        }
        if !Skill.name.isRemoved {
            Skill.name = advocatesServiceMetadata.EntityTypes.skill.property(withName: "name")
        }
        if !Skill.member.isRemoved {
            Skill.member = advocatesServiceMetadata.EntityTypes.skill.property(withName: "member")
        }
        if !SocialMediaPresence.id.isRemoved {
            SocialMediaPresence.id = advocatesServiceMetadata.EntityTypes.socialMediaPresence.property(withName: "ID")
        }
        if !SocialMediaPresence.createdAt.isRemoved {
            SocialMediaPresence.createdAt = advocatesServiceMetadata.EntityTypes.socialMediaPresence.property(withName: "createdAt")
        }
        if !SocialMediaPresence.createdBy.isRemoved {
            SocialMediaPresence.createdBy = advocatesServiceMetadata.EntityTypes.socialMediaPresence.property(withName: "createdBy")
        }
        if !SocialMediaPresence.modifiedAt.isRemoved {
            SocialMediaPresence.modifiedAt = advocatesServiceMetadata.EntityTypes.socialMediaPresence.property(withName: "modifiedAt")
        }
        if !SocialMediaPresence.modifiedBy.isRemoved {
            SocialMediaPresence.modifiedBy = advocatesServiceMetadata.EntityTypes.socialMediaPresence.property(withName: "modifiedBy")
        }
        if !SocialMediaPresence.name.isRemoved {
            SocialMediaPresence.name = advocatesServiceMetadata.EntityTypes.socialMediaPresence.property(withName: "name")
        }
        if !SocialMediaPresence.url.isRemoved {
            SocialMediaPresence.url = advocatesServiceMetadata.EntityTypes.socialMediaPresence.property(withName: "url")
        }
        if !SocialMediaPresence.member.isRemoved {
            SocialMediaPresence.member = advocatesServiceMetadata.EntityTypes.socialMediaPresence.property(withName: "member")
        }
        if !SocialMediaPresence.memberID.isRemoved {
            SocialMediaPresence.memberID = advocatesServiceMetadata.EntityTypes.socialMediaPresence.property(withName: "member_ID")
        }
    }
}
