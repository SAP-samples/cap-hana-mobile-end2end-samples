//
// AdvocatesApp
//
// Created by SAP BTP SDK Assistant for iOS application on 20/05/21
//

import Foundation

enum ComsapdevrelCollectionType: String {
    case membersSkills = "MembersSkills"
    case skill = "Skill"
    case members = "Members"
    case socialMediaPresence = "SocialMediaPresence"
    case none = ""
    static let all = [membersSkills, skill, members, socialMediaPresence]
}
