using advocates.service as advocates from '../db/schema';

// @requires: 'authenticated-user'
service AdvocatesService @(impl : './image-service.js') {
    @readonly : true
    entity Member as projection on advocates.Member;

    entity MemberImages as projection on advocates.MemberImages {
        * , member  :   redirected to Member
    };

    function loadMemberImages() returns Boolean;
    
    @readonly : true
    entity Skill as projection on advocates.Skill;
    
    @readonly : true
    entity Members_Skills as projection on advocates.Members2Skills;

    @readonly : true
    entity SocialMediaPresence as projection on advocates.SocialMediaPresence;
}