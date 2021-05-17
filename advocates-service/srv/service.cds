using advocates.service as advocates from '../db/schema';

service AdvocatesService {
    @readonly : true
    entity Members as projection on advocates.Members;
    
    @readonly : true
    entity Skill as projection on advocates.Skill;
    
    @readonly : true
    entity Members_Skills as projection on advocates.Members2Skills;

    @readonly : true
    entity SocialMediaPresence as projection on advocates.SocialMediaPresence;
}