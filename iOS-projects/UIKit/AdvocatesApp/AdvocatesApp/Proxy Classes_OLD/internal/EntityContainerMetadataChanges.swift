// # Proxy Compiler 20.7.9

import Foundation
import SAPOData

internal class EntityContainerMetadataChanges {
    static func merge(metadata: CSDLDocument) {
        metadata.hasGeneratedProxies = true
        EntityContainerMetadata.document = metadata
        EntityContainerMetadataChanges.merge1(metadata: metadata)
        try! EntityContainerFactory.registerAll()
    }

    private static func merge1(metadata: CSDLDocument) {
        _ = metadata
        if !EntityContainerMetadata.EntityTypes.members.isRemoved {
            EntityContainerMetadata.EntityTypes.members = metadata.entityType(withName: "AdvocatesService.Members")
        }
        if !EntityContainerMetadata.EntityTypes.membersSkills.isRemoved {
            EntityContainerMetadata.EntityTypes.membersSkills = metadata.entityType(withName: "AdvocatesService.Members_Skills")
        }
        if !EntityContainerMetadata.EntityTypes.skill.isRemoved {
            EntityContainerMetadata.EntityTypes.skill = metadata.entityType(withName: "AdvocatesService.Skill")
        }
        if !EntityContainerMetadata.EntityTypes.socialMediaPresence.isRemoved {
            EntityContainerMetadata.EntityTypes.socialMediaPresence = metadata.entityType(withName: "AdvocatesService.SocialMediaPresence")
        }
        if !EntityContainerMetadata.EntitySets.members.isRemoved {
            EntityContainerMetadata.EntitySets.members = metadata.entitySet(withName: "Members")
        }
        if !EntityContainerMetadata.EntitySets.membersSkills.isRemoved {
            EntityContainerMetadata.EntitySets.membersSkills = metadata.entitySet(withName: "Members_Skills")
        }
        if !EntityContainerMetadata.EntitySets.skill.isRemoved {
            EntityContainerMetadata.EntitySets.skill = metadata.entitySet(withName: "Skill")
        }
        if !EntityContainerMetadata.EntitySets.socialMediaPresence.isRemoved {
            EntityContainerMetadata.EntitySets.socialMediaPresence = metadata.entitySet(withName: "SocialMediaPresence")
        }
        if !Members.id.isRemoved {
            Members.id = EntityContainerMetadata.EntityTypes.members.property(withName: "ID")
        }
        if !Members.createdAt.isRemoved {
            Members.createdAt = EntityContainerMetadata.EntityTypes.members.property(withName: "createdAt")
        }
        if !Members.createdBy.isRemoved {
            Members.createdBy = EntityContainerMetadata.EntityTypes.members.property(withName: "createdBy")
        }
        if !Members.modifiedAt.isRemoved {
            Members.modifiedAt = EntityContainerMetadata.EntityTypes.members.property(withName: "modifiedAt")
        }
        if !Members.modifiedBy.isRemoved {
            Members.modifiedBy = EntityContainerMetadata.EntityTypes.members.property(withName: "modifiedBy")
        }
        if !Members.firstName.isRemoved {
            Members.firstName = EntityContainerMetadata.EntityTypes.members.property(withName: "firstName")
        }
        if !Members.lastName.isRemoved {
            Members.lastName = EntityContainerMetadata.EntityTypes.members.property(withName: "lastName")
        }
        if !Members.title.isRemoved {
            Members.title = EntityContainerMetadata.EntityTypes.members.property(withName: "title")
        }
        if !Members.focusArea.isRemoved {
            Members.focusArea = EntityContainerMetadata.EntityTypes.members.property(withName: "focusArea")
        }
        if !Members.skills.isRemoved {
            Members.skills = EntityContainerMetadata.EntityTypes.members.property(withName: "skills")
        }
        if !Members.socialMedia.isRemoved {
            Members.socialMedia = EntityContainerMetadata.EntityTypes.members.property(withName: "socialMedia")
        }
        if !Members.description.isRemoved {
            Members.description = EntityContainerMetadata.EntityTypes.members.property(withName: "description")
        }
        if !MembersSkills.id.isRemoved {
            MembersSkills.id = EntityContainerMetadata.EntityTypes.membersSkills.property(withName: "ID")
        }
        if !MembersSkills.createdAt.isRemoved {
            MembersSkills.createdAt = EntityContainerMetadata.EntityTypes.membersSkills.property(withName: "createdAt")
        }
        if !MembersSkills.createdBy.isRemoved {
            MembersSkills.createdBy = EntityContainerMetadata.EntityTypes.membersSkills.property(withName: "createdBy")
        }
        if !MembersSkills.modifiedAt.isRemoved {
            MembersSkills.modifiedAt = EntityContainerMetadata.EntityTypes.membersSkills.property(withName: "modifiedAt")
        }
        if !MembersSkills.modifiedBy.isRemoved {
            MembersSkills.modifiedBy = EntityContainerMetadata.EntityTypes.membersSkills.property(withName: "modifiedBy")
        }
        if !MembersSkills.memberID.isRemoved {
            MembersSkills.memberID = EntityContainerMetadata.EntityTypes.membersSkills.property(withName: "member_ID")
        }
        if !MembersSkills.skillID.isRemoved {
            MembersSkills.skillID = EntityContainerMetadata.EntityTypes.membersSkills.property(withName: "skill_ID")
        }
        if !MembersSkills.memberIDID.isRemoved {
            MembersSkills.memberIDID = EntityContainerMetadata.EntityTypes.membersSkills.property(withName: "member_ID_ID")
        }
        if !MembersSkills.skillIDID.isRemoved {
            MembersSkills.skillIDID = EntityContainerMetadata.EntityTypes.membersSkills.property(withName: "skill_ID_ID")
        }
        if !Skill.id.isRemoved {
            Skill.id = EntityContainerMetadata.EntityTypes.skill.property(withName: "ID")
        }
        if !Skill.createdAt.isRemoved {
            Skill.createdAt = EntityContainerMetadata.EntityTypes.skill.property(withName: "createdAt")
        }
        if !Skill.createdBy.isRemoved {
            Skill.createdBy = EntityContainerMetadata.EntityTypes.skill.property(withName: "createdBy")
        }
        if !Skill.modifiedAt.isRemoved {
            Skill.modifiedAt = EntityContainerMetadata.EntityTypes.skill.property(withName: "modifiedAt")
        }
        if !Skill.modifiedBy.isRemoved {
            Skill.modifiedBy = EntityContainerMetadata.EntityTypes.skill.property(withName: "modifiedBy")
        }
        if !Skill.name.isRemoved {
            Skill.name = EntityContainerMetadata.EntityTypes.skill.property(withName: "name")
        }
        if !Skill.member.isRemoved {
            Skill.member = EntityContainerMetadata.EntityTypes.skill.property(withName: "member")
        }
        if !SocialMediaPresence.id.isRemoved {
            SocialMediaPresence.id = EntityContainerMetadata.EntityTypes.socialMediaPresence.property(withName: "ID")
        }
        if !SocialMediaPresence.createdAt.isRemoved {
            SocialMediaPresence.createdAt = EntityContainerMetadata.EntityTypes.socialMediaPresence.property(withName: "createdAt")
        }
        if !SocialMediaPresence.createdBy.isRemoved {
            SocialMediaPresence.createdBy = EntityContainerMetadata.EntityTypes.socialMediaPresence.property(withName: "createdBy")
        }
        if !SocialMediaPresence.modifiedAt.isRemoved {
            SocialMediaPresence.modifiedAt = EntityContainerMetadata.EntityTypes.socialMediaPresence.property(withName: "modifiedAt")
        }
        if !SocialMediaPresence.modifiedBy.isRemoved {
            SocialMediaPresence.modifiedBy = EntityContainerMetadata.EntityTypes.socialMediaPresence.property(withName: "modifiedBy")
        }
        if !SocialMediaPresence.name.isRemoved {
            SocialMediaPresence.name = EntityContainerMetadata.EntityTypes.socialMediaPresence.property(withName: "name")
        }
        if !SocialMediaPresence.url.isRemoved {
            SocialMediaPresence.url = EntityContainerMetadata.EntityTypes.socialMediaPresence.property(withName: "url")
        }
        if !SocialMediaPresence.member.isRemoved {
            SocialMediaPresence.member = EntityContainerMetadata.EntityTypes.socialMediaPresence.property(withName: "member")
        }
        if !SocialMediaPresence.memberID.isRemoved {
            SocialMediaPresence.memberID = EntityContainerMetadata.EntityTypes.socialMediaPresence.property(withName: "member_ID")
        }
    }
}
