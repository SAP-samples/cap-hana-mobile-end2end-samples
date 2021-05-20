namespace advocates.service;

using {
    managed,
    sap,
    cuid
} from '@sap/cds/common';

entity Member  : cuid, managed {
    firstName   : String;
    lastName    : String;
    title       : String;
    focusArea   : String;
    skills      : Association to many Members2Skills on skills.member_ID = $self;
    socialMedia : Association to many SocialMediaPresence on socialMedia.member = $self;
    description : String;
}

entity Skill    : cuid, managed {
    name        : String;
    member      : Association to many Members2Skills on member.skill_ID = $self;
}

entity SocialMediaPresence  : cuid, managed {
    name    : String;
    url     : String;
    member  : Association to Member;
}

entity Members2Skills   : cuid, managed {
    member_ID           : Association to Member;
    skill_ID            : Association to Skill;
}
