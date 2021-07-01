//# xsc 20.7.9

import Foundation
import SAPOData

open class Member: EntityValue {
    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
    }

    private static var id_: Property = advocatesServiceMetadata.EntityTypes.member.property(withName: "ID")

    private static var createdAt_: Property = advocatesServiceMetadata.EntityTypes.member.property(withName: "createdAt")

    private static var createdBy_: Property = advocatesServiceMetadata.EntityTypes.member.property(withName: "createdBy")

    private static var modifiedAt_: Property = advocatesServiceMetadata.EntityTypes.member.property(withName: "modifiedAt")

    private static var modifiedBy_: Property = advocatesServiceMetadata.EntityTypes.member.property(withName: "modifiedBy")

    private static var firstName_: Property = advocatesServiceMetadata.EntityTypes.member.property(withName: "firstName")

    private static var lastName_: Property = advocatesServiceMetadata.EntityTypes.member.property(withName: "lastName")

    private static var title_: Property = advocatesServiceMetadata.EntityTypes.member.property(withName: "title")

    private static var focusArea_: Property = advocatesServiceMetadata.EntityTypes.member.property(withName: "focusArea")

    private static var skills_: Property = advocatesServiceMetadata.EntityTypes.member.property(withName: "skills")

    private static var socialMedia_: Property = advocatesServiceMetadata.EntityTypes.member.property(withName: "socialMedia")

    private static var description_: Property = advocatesServiceMetadata.EntityTypes.member.property(withName: "description")

    public init(withDefaults: Bool = true, withIndexMap: SparseIndexMap? = nil) {
        super.init(withDefaults: withDefaults, type: advocatesServiceMetadata.EntityTypes.member, withIndexMap: withIndexMap)
    }

    open class func array(from: EntityValueList) -> Array<Member> {
        return ArrayConverter.convert(from.toArray(), Array<Member>())
    }

    open func copy() -> Member {
        return CastRequired<Member>.from(self.copyEntity())
    }

    open class var createdAt: Property {
        get {
            objc_sync_enter(Member.self)
            defer { objc_sync_exit(Member.self); }
            do {
                return Member.createdAt_
            }
        }
        set(value) {
            objc_sync_enter(Member.self)
            defer { objc_sync_exit(Member.self); }
            do {
                Member.createdAt_ = value
            }
        }
    }

    open var createdAt: GlobalDateTime? {
        get {
            return GlobalDateTime.castOptional(self.optionalValue(for: Member.createdAt))
        }
        set(value) {
            self.setOptionalValue(for: Member.createdAt, to: value)
        }
    }

    open class var createdBy: Property {
        get {
            objc_sync_enter(Member.self)
            defer { objc_sync_exit(Member.self); }
            do {
                return Member.createdBy_
            }
        }
        set(value) {
            objc_sync_enter(Member.self)
            defer { objc_sync_exit(Member.self); }
            do {
                Member.createdBy_ = value
            }
        }
    }

    open var createdBy: String? {
        get {
            return StringValue.optional(self.optionalValue(for: Member.createdBy))
        }
        set(value) {
            self.setOptionalValue(for: Member.createdBy, to: StringValue.of(optional: value))
        }
    }

    open class var description: Property {
        get {
            objc_sync_enter(Member.self)
            defer { objc_sync_exit(Member.self); }
            do {
                return Member.description_
            }
        }
        set(value) {
            objc_sync_enter(Member.self)
            defer { objc_sync_exit(Member.self); }
            do {
                Member.description_ = value
            }
        }
    }

    open var description: String? {
        get {
            return StringValue.optional(self.optionalValue(for: Member.description))
        }
        set(value) {
            self.setOptionalValue(for: Member.description, to: StringValue.of(optional: value))
        }
    }

    open class var firstName: Property {
        get {
            objc_sync_enter(Member.self)
            defer { objc_sync_exit(Member.self); }
            do {
                return Member.firstName_
            }
        }
        set(value) {
            objc_sync_enter(Member.self)
            defer { objc_sync_exit(Member.self); }
            do {
                Member.firstName_ = value
            }
        }
    }

    open var firstName: String? {
        get {
            return StringValue.optional(self.optionalValue(for: Member.firstName))
        }
        set(value) {
            self.setOptionalValue(for: Member.firstName, to: StringValue.of(optional: value))
        }
    }

    open class var focusArea: Property {
        get {
            objc_sync_enter(Member.self)
            defer { objc_sync_exit(Member.self); }
            do {
                return Member.focusArea_
            }
        }
        set(value) {
            objc_sync_enter(Member.self)
            defer { objc_sync_exit(Member.self); }
            do {
                Member.focusArea_ = value
            }
        }
    }

    open var focusArea: String? {
        get {
            return StringValue.optional(self.optionalValue(for: Member.focusArea))
        }
        set(value) {
            self.setOptionalValue(for: Member.focusArea, to: StringValue.of(optional: value))
        }
    }

    open class var id: Property {
        get {
            objc_sync_enter(Member.self)
            defer { objc_sync_exit(Member.self); }
            do {
                return Member.id_
            }
        }
        set(value) {
            objc_sync_enter(Member.self)
            defer { objc_sync_exit(Member.self); }
            do {
                Member.id_ = value
            }
        }
    }

    open var id: GuidValue? {
        get {
            return GuidValue.castOptional(self.optionalValue(for: Member.id))
        }
        set(value) {
            self.setOptionalValue(for: Member.id, to: value)
        }
    }

    override open var isProxy: Bool {
        get {
            return true
        }
    }

    open class func key(id: GuidValue?) -> EntityKey {
        return EntityKey().with(name: "ID", value: id)
    }

    open class var lastName: Property {
        get {
            objc_sync_enter(Member.self)
            defer { objc_sync_exit(Member.self); }
            do {
                return Member.lastName_
            }
        }
        set(value) {
            objc_sync_enter(Member.self)
            defer { objc_sync_exit(Member.self); }
            do {
                Member.lastName_ = value
            }
        }
    }

    open var lastName: String? {
        get {
            return StringValue.optional(self.optionalValue(for: Member.lastName))
        }
        set(value) {
            self.setOptionalValue(for: Member.lastName, to: StringValue.of(optional: value))
        }
    }

    open class var modifiedAt: Property {
        get {
            objc_sync_enter(Member.self)
            defer { objc_sync_exit(Member.self); }
            do {
                return Member.modifiedAt_
            }
        }
        set(value) {
            objc_sync_enter(Member.self)
            defer { objc_sync_exit(Member.self); }
            do {
                Member.modifiedAt_ = value
            }
        }
    }

    open var modifiedAt: GlobalDateTime? {
        get {
            return GlobalDateTime.castOptional(self.optionalValue(for: Member.modifiedAt))
        }
        set(value) {
            self.setOptionalValue(for: Member.modifiedAt, to: value)
        }
    }

    open class var modifiedBy: Property {
        get {
            objc_sync_enter(Member.self)
            defer { objc_sync_exit(Member.self); }
            do {
                return Member.modifiedBy_
            }
        }
        set(value) {
            objc_sync_enter(Member.self)
            defer { objc_sync_exit(Member.self); }
            do {
                Member.modifiedBy_ = value
            }
        }
    }

    open var modifiedBy: String? {
        get {
            return StringValue.optional(self.optionalValue(for: Member.modifiedBy))
        }
        set(value) {
            self.setOptionalValue(for: Member.modifiedBy, to: StringValue.of(optional: value))
        }
    }

    open var old: Member {
        get {
            return CastRequired<Member>.from(self.oldEntity)
        }
    }

    open class var skills: Property {
        get {
            objc_sync_enter(Member.self)
            defer { objc_sync_exit(Member.self); }
            do {
                return Member.skills_
            }
        }
        set(value) {
            objc_sync_enter(Member.self)
            defer { objc_sync_exit(Member.self); }
            do {
                Member.skills_ = value
            }
        }
    }

    open var skills: Array<MembersSkills> {
        get {
            return ArrayConverter.convert(Member.skills.entityList(from: self).toArray(), Array<MembersSkills>())
        }
        set(value) {
            Member.skills.setEntityList(in: self, to: EntityValueList.fromArray(ArrayConverter.convert(value, Array<EntityValue>())))
        }
    }

    open class var socialMedia: Property {
        get {
            objc_sync_enter(Member.self)
            defer { objc_sync_exit(Member.self); }
            do {
                return Member.socialMedia_
            }
        }
        set(value) {
            objc_sync_enter(Member.self)
            defer { objc_sync_exit(Member.self); }
            do {
                Member.socialMedia_ = value
            }
        }
    }

    open var socialMedia: Array<SocialMediaPresence> {
        get {
            return ArrayConverter.convert(Member.socialMedia.entityList(from: self).toArray(), Array<SocialMediaPresence>())
        }
        set(value) {
            Member.socialMedia.setEntityList(in: self, to: EntityValueList.fromArray(ArrayConverter.convert(value, Array<EntityValue>())))
        }
    }

    open class var title: Property {
        get {
            objc_sync_enter(Member.self)
            defer { objc_sync_exit(Member.self); }
            do {
                return Member.title_
            }
        }
        set(value) {
            objc_sync_enter(Member.self)
            defer { objc_sync_exit(Member.self); }
            do {
                Member.title_ = value
            }
        }
    }

    open var title: String? {
        get {
            return StringValue.optional(self.optionalValue(for: Member.title))
        }
        set(value) {
            self.setOptionalValue(for: Member.title, to: StringValue.of(optional: value))
        }
    }
}
