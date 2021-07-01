//# xsc 20.7.9

import Foundation
import SAPOData

open class AdvocatesService<Provider: DataServiceProvider>: DataService<Provider> {
    public override init(provider: Provider) {
        super.init(provider: provider)
        self.provider.metadata = advocatesServiceMetadata.document
    }

    open func fetchMember(matching query: DataQuery? = nil, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> Array<Member> {
        let var_query = DataQuery.newIfNull(query: query)
        let var_headers = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options = RequestOptions.noneIfNull(options: options)
        return try Member.array(from: self.executeQuery(var_query.fromDefault(advocatesServiceMetadata.EntitySets.member), headers: var_headers, options: var_options).entityList())
    }

    open func fetchMember(matching query: DataQuery = DataQuery(), headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (Array<Member>?, Error?) -> Void) -> Void {
        self.addBackgroundOperationForFunction {
        do {
            let result = try self.fetchMember(matching: query, headers: headers, options: options)
            self.completionQueue.addOperation {
                completionHandler(result, nil)
            }
        }
        catch let error {
            self.completionQueue.addOperation {
                completionHandler(nil, error)
            }
        }
        }
    }

    open func fetchMember1(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> Member {
        let var_headers = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options = RequestOptions.noneIfNull(options: options)
        return try CastRequired<Member>.from(self.executeQuery(query.fromDefault(advocatesServiceMetadata.EntitySets.member), headers: var_headers, options: var_options).requiredEntity())
    }

    open func fetchMember1(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (Member?, Error?) -> Void) -> Void {
        self.addBackgroundOperationForFunction {
        do {
            let result = try self.fetchMember1(matching: query, headers: headers, options: options)
            self.completionQueue.addOperation {
                completionHandler(result, nil)
            }
        }
        catch let error {
            self.completionQueue.addOperation {
                completionHandler(nil, error)
            }
        }
        }
    }

    open func fetchMember1WithKey(id: GuidValue?, query: DataQuery? = nil, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> Member {
        let var_query = DataQuery.newIfNull(query: query)
        return try self.fetchMember1(matching: var_query.withKey(Member.key(id: id)), headers: headers, options: options)
    }

    open func fetchMember1WithKey(id: GuidValue?, query: DataQuery?, headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (Member?, Error?) -> Void) -> Void {
        self.addBackgroundOperationForFunction {
        do {
            let result = try self.fetchMember1WithKey(id: id, query: query, headers: headers, options: options)
            self.completionQueue.addOperation {
                completionHandler(result, nil)
            }
        }
        catch let error {
            self.completionQueue.addOperation {
                completionHandler(nil, error)
            }
        }
        }
    }

    open func fetchMembersSkills(matching query: DataQuery? = nil, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> Array<MembersSkills> {
        let var_query = DataQuery.newIfNull(query: query)
        let var_headers = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options = RequestOptions.noneIfNull(options: options)
        return try MembersSkills.array(from: self.executeQuery(var_query.fromDefault(advocatesServiceMetadata.EntitySets.membersSkills), headers: var_headers, options: var_options).entityList())
    }

    open func fetchMembersSkills(matching query: DataQuery = DataQuery(), headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (Array<MembersSkills>?, Error?) -> Void) -> Void {
        self.addBackgroundOperationForFunction {
        do {
            let result = try self.fetchMembersSkills(matching: query, headers: headers, options: options)
            self.completionQueue.addOperation {
                completionHandler(result, nil)
            }
        }
        catch let error {
            self.completionQueue.addOperation {
                completionHandler(nil, error)
            }
        }
        }
    }

    open func fetchMembersSkills1(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> MembersSkills {
        let var_headers = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options = RequestOptions.noneIfNull(options: options)
        return try CastRequired<MembersSkills>.from(self.executeQuery(query.fromDefault(advocatesServiceMetadata.EntitySets.membersSkills), headers: var_headers, options: var_options).requiredEntity())
    }

    open func fetchMembersSkills1(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (MembersSkills?, Error?) -> Void) -> Void {
        self.addBackgroundOperationForFunction {
        do {
            let result = try self.fetchMembersSkills1(matching: query, headers: headers, options: options)
            self.completionQueue.addOperation {
                completionHandler(result, nil)
            }
        }
        catch let error {
            self.completionQueue.addOperation {
                completionHandler(nil, error)
            }
        }
        }
    }

    open func fetchMembersSkills1WithKey(id: GuidValue?, query: DataQuery? = nil, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> MembersSkills {
        let var_query = DataQuery.newIfNull(query: query)
        return try self.fetchMembersSkills1(matching: var_query.withKey(MembersSkills.key(id: id)), headers: headers, options: options)
    }

    open func fetchMembersSkills1WithKey(id: GuidValue?, query: DataQuery?, headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (MembersSkills?, Error?) -> Void) -> Void {
        self.addBackgroundOperationForFunction {
        do {
            let result = try self.fetchMembersSkills1WithKey(id: id, query: query, headers: headers, options: options)
            self.completionQueue.addOperation {
                completionHandler(result, nil)
            }
        }
        catch let error {
            self.completionQueue.addOperation {
                completionHandler(nil, error)
            }
        }
        }
    }

    open func fetchSkill(matching query: DataQuery? = nil, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> Array<Skill> {
        let var_query = DataQuery.newIfNull(query: query)
        let var_headers = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options = RequestOptions.noneIfNull(options: options)
        return try Skill.array(from: self.executeQuery(var_query.fromDefault(advocatesServiceMetadata.EntitySets.skill), headers: var_headers, options: var_options).entityList())
    }

    open func fetchSkill(matching query: DataQuery = DataQuery(), headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (Array<Skill>?, Error?) -> Void) -> Void {
        self.addBackgroundOperationForFunction {
        do {
            let result = try self.fetchSkill(matching: query, headers: headers, options: options)
            self.completionQueue.addOperation {
                completionHandler(result, nil)
            }
        }
        catch let error {
            self.completionQueue.addOperation {
                completionHandler(nil, error)
            }
        }
        }
    }

    open func fetchSkill1(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> Skill {
        let var_headers = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options = RequestOptions.noneIfNull(options: options)
        return try CastRequired<Skill>.from(self.executeQuery(query.fromDefault(advocatesServiceMetadata.EntitySets.skill), headers: var_headers, options: var_options).requiredEntity())
    }

    open func fetchSkill1(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (Skill?, Error?) -> Void) -> Void {
        self.addBackgroundOperationForFunction {
        do {
            let result = try self.fetchSkill1(matching: query, headers: headers, options: options)
            self.completionQueue.addOperation {
                completionHandler(result, nil)
            }
        }
        catch let error {
            self.completionQueue.addOperation {
                completionHandler(nil, error)
            }
        }
        }
    }

    open func fetchSkill1WithKey(id: GuidValue?, query: DataQuery? = nil, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> Skill {
        let var_query = DataQuery.newIfNull(query: query)
        return try self.fetchSkill1(matching: var_query.withKey(Skill.key(id: id)), headers: headers, options: options)
    }

    open func fetchSkill1WithKey(id: GuidValue?, query: DataQuery?, headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (Skill?, Error?) -> Void) -> Void {
        self.addBackgroundOperationForFunction {
        do {
            let result = try self.fetchSkill1WithKey(id: id, query: query, headers: headers, options: options)
            self.completionQueue.addOperation {
                completionHandler(result, nil)
            }
        }
        catch let error {
            self.completionQueue.addOperation {
                completionHandler(nil, error)
            }
        }
        }
    }

    open func fetchSocialMediaPresence(matching query: DataQuery? = nil, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> Array<SocialMediaPresence> {
        let var_query = DataQuery.newIfNull(query: query)
        let var_headers = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options = RequestOptions.noneIfNull(options: options)
        return try SocialMediaPresence.array(from: self.executeQuery(var_query.fromDefault(advocatesServiceMetadata.EntitySets.socialMediaPresence), headers: var_headers, options: var_options).entityList())
    }

    open func fetchSocialMediaPresence(matching query: DataQuery = DataQuery(), headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (Array<SocialMediaPresence>?, Error?) -> Void) -> Void {
        self.addBackgroundOperationForFunction {
        do {
            let result = try self.fetchSocialMediaPresence(matching: query, headers: headers, options: options)
            self.completionQueue.addOperation {
                completionHandler(result, nil)
            }
        }
        catch let error {
            self.completionQueue.addOperation {
                completionHandler(nil, error)
            }
        }
        }
    }

    open func fetchSocialMediaPresence1(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> SocialMediaPresence {
        let var_headers = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options = RequestOptions.noneIfNull(options: options)
        return try CastRequired<SocialMediaPresence>.from(self.executeQuery(query.fromDefault(advocatesServiceMetadata.EntitySets.socialMediaPresence), headers: var_headers, options: var_options).requiredEntity())
    }

    open func fetchSocialMediaPresence1(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (SocialMediaPresence?, Error?) -> Void) -> Void {
        self.addBackgroundOperationForFunction {
        do {
            let result = try self.fetchSocialMediaPresence1(matching: query, headers: headers, options: options)
            self.completionQueue.addOperation {
                completionHandler(result, nil)
            }
        }
        catch let error {
            self.completionQueue.addOperation {
                completionHandler(nil, error)
            }
        }
        }
    }

    open func fetchSocialMediaPresence1WithKey(id: GuidValue?, query: DataQuery? = nil, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> SocialMediaPresence {
        let var_query = DataQuery.newIfNull(query: query)
        return try self.fetchSocialMediaPresence1(matching: var_query.withKey(SocialMediaPresence.key(id: id)), headers: headers, options: options)
    }

    open func fetchSocialMediaPresence1WithKey(id: GuidValue?, query: DataQuery?, headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (SocialMediaPresence?, Error?) -> Void) -> Void {
        self.addBackgroundOperationForFunction {
        do {
            let result = try self.fetchSocialMediaPresence1WithKey(id: id, query: query, headers: headers, options: options)
            self.completionQueue.addOperation {
                completionHandler(result, nil)
            }
        }
        catch let error {
            self.completionQueue.addOperation {
                completionHandler(nil, error)
            }
        }
        }
    }

    override open var metadataLock: MetadataLock {
        get {
            return advocatesServiceMetadata.lock
        }
    }

    override open func refreshMetadata() throws -> Void {
        objc_sync_enter(self)
        defer { objc_sync_exit(self); }
        do {
            try ProxyInternal.refreshMetadataWithLock(service: self, fetcher: nil, options: advocatesServiceMetadataParser.options, mergeAction: { advocatesServiceMetadataChanges.merge(metadata: self.metadata) })
        }
    }
}
