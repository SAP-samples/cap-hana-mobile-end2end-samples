using advocates.service as advocates from '../db/schema';

@requires: 'authenticated-user'
service AdvocatesService {
    @readonly : true
    entity Member as projection on advocates.Member;
    
    @readonly : true
    entity Skill as projection on advocates.Skill;
    
    @readonly : true
    entity Members_Skills as projection on advocates.Members2Skills;

    @readonly : true
    entity SocialMediaPresence as projection on advocates.SocialMediaPresence;
}