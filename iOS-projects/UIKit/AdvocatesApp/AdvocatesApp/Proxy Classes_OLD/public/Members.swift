// # Proxy Compiler 20.7.9

import Foundation
import SAPOData

open class Members: EntityValue {
    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
    }

    private static var id_: Property = EntityContainerMetadata.EntityTypes.members.property(withName: "ID")

    private static var createdAt_: Property = EntityContainerMetadata.EntityTypes.members.property(withName: "createdAt")

    private static var createdBy_: Property = EntityContainerMetadata.EntityTypes.members.property(withName: "createdBy")

    private static var modifiedAt_: Property = EntityContainerMetadata.EntityTypes.members.property(withName: "modifiedAt")

    private static var modifiedBy_: Property = EntityContainerMetadata.EntityTypes.members.property(withName: "modifiedBy")

    private static var firstName_: Property = EntityContainerMetadata.EntityTypes.members.property(withName: "firstName")

    private static var lastName_: Property = EntityContainerMetadata.EntityTypes.members.property(withName: "lastName")

    private static var title_: Property = EntityContainerMetadata.EntityTypes.members.property(withName: "title")

    private static var focusArea_: Property = EntityContainerMetadata.EntityTypes.members.property(withName: "focusArea")

    private static var skills_: Property = EntityContainerMetadata.EntityTypes.members.property(withName: "skills")

    private static var socialMedia_: Property = EntityContainerMetadata.EntityTypes.members.property(withName: "socialMedia")

    private static var description_: Property = EntityContainerMetadata.EntityTypes.members.property(withName: "description")

    public init(withDefaults: Bool = true, withIndexMap: SparseIndexMap? = nil) {
        super.init(withDefaults: withDefaults, type: EntityContainerMetadata.EntityTypes.members, withIndexMap: withIndexMap)
    }

    open class func array(from: EntityValueList) -> [Members] {
        return ArrayConverter.convert(from.toArray(), [Members]())
    }

    open func copy() -> Members {
        return CastRequired<Members>.from(self.copyEntity())
    }

    open class var createdAt: Property {
        get {
            objc_sync_enter(Members.self)
            defer { objc_sync_exit(Members.self) }
            do {
                return Members.createdAt_
            }
        }
        set(value) {
            objc_sync_enter(Members.self)
            defer { objc_sync_exit(Members.self) }
            do {
                Members.createdAt_ = value
            }
        }
    }

    open var createdAt: GlobalDateTime? {
        get {
            return GlobalDateTime.castOptional(self.optionalValue(for: Members.createdAt))
        }
        set(value) {
            self.setOptionalValue(for: Members.createdAt, to: value)
        }
    }

    open class var createdBy: Property {
        get {
            objc_sync_enter(Members.self)
            defer { objc_sync_exit(Members.self) }
            do {
                return Members.createdBy_
            }
        }
        set(value) {
            objc_sync_enter(Members.self)
            defer { objc_sync_exit(Members.self) }
            do {
                Members.createdBy_ = value
            }
        }
    }

    open var createdBy: String? {
        get {
            return StringValue.optional(self.optionalValue(for: Members.createdBy))
        }
        set(value) {
            self.setOptionalValue(for: Members.createdBy, to: StringValue.of(optional: value))
        }
    }

    open class var description: Property {
        get {
            objc_sync_enter(Members.self)
            defer { objc_sync_exit(Members.self) }
            do {
                return Members.description_
            }
        }
        set(value) {
            objc_sync_enter(Members.self)
            defer { objc_sync_exit(Members.self) }
            do {
                Members.description_ = value
            }
        }
    }

    open var description: String? {
        get {
            return StringValue.optional(self.optionalValue(for: Members.description))
        }
        set(value) {
            self.setOptionalValue(for: Members.description, to: StringValue.of(optional: value))
        }
    }

    open class var firstName: Property {
        get {
            objc_sync_enter(Members.self)
            defer { objc_sync_exit(Members.self) }
            do {
                return Members.firstName_
            }
        }
        set(value) {
            objc_sync_enter(Members.self)
            defer { objc_sync_exit(Members.self) }
            do {
                Members.firstName_ = value
            }
        }
    }

    open var firstName: String? {
        get {
            return StringValue.optional(self.optionalValue(for: Members.firstName))
        }
        set(value) {
            self.setOptionalValue(for: Members.firstName, to: StringValue.of(optional: value))
        }
    }

    open class var focusArea: Property {
        get {
            objc_sync_enter(Members.self)
            defer { objc_sync_exit(Members.self) }
            do {
                return Members.focusArea_
            }
        }
        set(value) {
            objc_sync_enter(Members.self)
            defer { objc_sync_exit(Members.self) }
            do {
                Members.focusArea_ = value
            }
        }
    }

    open var focusArea: String? {
        get {
            return StringValue.optional(self.optionalValue(for: Members.focusArea))
        }
        set(value) {
            self.setOptionalValue(for: Members.focusArea, to: StringValue.of(optional: value))
        }
    }

    open class var id: Property {
        get {
            objc_sync_enter(Members.self)
            defer { objc_sync_exit(Members.self) }
            do {
                return Members.id_
            }
        }
        set(value) {
            objc_sync_enter(Members.self)
            defer { objc_sync_exit(Members.self) }
            do {
                Members.id_ = value
            }
        }
    }

    open var id: GuidValue? {
        get {
            return GuidValue.castOptional(self.optionalValue(for: Members.id))
        }
        set(value) {
            self.setOptionalValue(for: Members.id, to: value)
        }
    }

    open override var isProxy: Bool {
        return true
    }

    open class func key(id: GuidValue?) -> EntityKey {
        return EntityKey().with(name: "ID", value: id)
    }

    open class var lastName: Property {
        get {
            objc_sync_enter(Members.self)
            defer { objc_sync_exit(Members.self) }
            do {
                return Members.lastName_
            }
        }
        set(value) {
            objc_sync_enter(Members.self)
            defer { objc_sync_exit(Members.self) }
            do {
                Members.lastName_ = value
            }
        }
    }

    open var lastName: String? {
        get {
            return StringValue.optional(self.optionalValue(for: Members.lastName))
        }
        set(value) {
            self.setOptionalValue(for: Members.lastName, to: StringValue.of(optional: value))
        }
    }

    open class var modifiedAt: Property {
        get {
            objc_sync_enter(Members.self)
            defer { objc_sync_exit(Members.self) }
            do {
                return Members.modifiedAt_
            }
        }
        set(value) {
            objc_sync_enter(Members.self)
            defer { objc_sync_exit(Members.self) }
            do {
                Members.modifiedAt_ = value
            }
        }
    }

    open var modifiedAt: GlobalDateTime? {
        get {
            return GlobalDateTime.castOptional(self.optionalValue(for: Members.modifiedAt))
        }
        set(value) {
            self.setOptionalValue(for: Members.modifiedAt, to: value)
        }
    }

    open class var modifiedBy: Property {
        get {
            objc_sync_enter(Members.self)
            defer { objc_sync_exit(Members.self) }
            do {
                return Members.modifiedBy_
            }
        }
        set(value) {
            objc_sync_enter(Members.self)
            defer { objc_sync_exit(Members.self) }
            do {
                Members.modifiedBy_ = value
            }
        }
    }

    open var modifiedBy: String? {
        get {
            return StringValue.optional(self.optionalValue(for: Members.modifiedBy))
        }
        set(value) {
            self.setOptionalValue(for: Members.modifiedBy, to: StringValue.of(optional: value))
        }
    }

    open var old: Members {
        return CastRequired<Members>.from(self.oldEntity)
    }

    open class var skills: Property {
        get {
            objc_sync_enter(Members.self)
            defer { objc_sync_exit(Members.self) }
            do {
                return Members.skills_
            }
        }
        set(value) {
            objc_sync_enter(Members.self)
            defer { objc_sync_exit(Members.self) }
            do {
                Members.skills_ = value
            }
        }
    }

    open var skills: [MembersSkills] {
        get {
            return ArrayConverter.convert(Members.skills.entityList(from: self).toArray(), [MembersSkills]())
        }
        set(value) {
            Members.skills.setEntityList(in: self, to: EntityValueList.fromArray(ArrayConverter.convert(value, [EntityValue]())))
        }
    }

    open class var socialMedia: Property {
        get {
            objc_sync_enter(Members.self)
            defer { objc_sync_exit(Members.self) }
            do {
                return Members.socialMedia_
            }
        }
        set(value) {
            objc_sync_enter(Members.self)
            defer { objc_sync_exit(Members.self) }
            do {
                Members.socialMedia_ = value
            }
        }
    }

    open var socialMedia: [SocialMediaPresence] {
        get {
            return ArrayConverter.convert(Members.socialMedia.entityList(from: self).toArray(), [SocialMediaPresence]())
        }
        set(value) {
            Members.socialMedia.setEntityList(in: self, to: EntityValueList.fromArray(ArrayConverter.convert(value, [EntityValue]())))
        }
    }

    open class var title: Property {
        get {
            objc_sync_enter(Members.self)
            defer { objc_sync_exit(Members.self) }
            do {
                return Members.title_
            }
        }
        set(value) {
            objc_sync_enter(Members.self)
            defer { objc_sync_exit(Members.self) }
            do {
                Members.title_ = value
            }
        }
    }

    open var title: String? {
        get {
            return StringValue.optional(self.optionalValue(for: Members.title))
        }
        set(value) {
            self.setOptionalValue(for: Members.title, to: StringValue.of(optional: value))
        }
    }
}
