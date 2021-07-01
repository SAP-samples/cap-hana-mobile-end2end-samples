// # Proxy Compiler 20.7.9

import Foundation
import SAPOData

open class SocialMediaPresence: EntityValue {
    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
    }

    private static var id_: Property = EntityContainerMetadata.EntityTypes.socialMediaPresence.property(withName: "ID")

    private static var createdAt_: Property = EntityContainerMetadata.EntityTypes.socialMediaPresence.property(withName: "createdAt")

    private static var createdBy_: Property = EntityContainerMetadata.EntityTypes.socialMediaPresence.property(withName: "createdBy")

    private static var modifiedAt_: Property = EntityContainerMetadata.EntityTypes.socialMediaPresence.property(withName: "modifiedAt")

    private static var modifiedBy_: Property = EntityContainerMetadata.EntityTypes.socialMediaPresence.property(withName: "modifiedBy")

    private static var name_: Property = EntityContainerMetadata.EntityTypes.socialMediaPresence.property(withName: "name")

    private static var url_: Property = EntityContainerMetadata.EntityTypes.socialMediaPresence.property(withName: "url")

    private static var member_: Property = EntityContainerMetadata.EntityTypes.socialMediaPresence.property(withName: "member")

    private static var memberID_: Property = EntityContainerMetadata.EntityTypes.socialMediaPresence.property(withName: "member_ID")

    public init(withDefaults: Bool = true, withIndexMap: SparseIndexMap? = nil) {
        super.init(withDefaults: withDefaults, type: EntityContainerMetadata.EntityTypes.socialMediaPresence, withIndexMap: withIndexMap)
    }

    open class func array(from: EntityValueList) -> [SocialMediaPresence] {
        return ArrayConverter.convert(from.toArray(), [SocialMediaPresence]())
    }

    open func copy() -> SocialMediaPresence {
        return CastRequired<SocialMediaPresence>.from(self.copyEntity())
    }

    open class var createdAt: Property {
        get {
            objc_sync_enter(SocialMediaPresence.self)
            defer { objc_sync_exit(SocialMediaPresence.self) }
            do {
                return SocialMediaPresence.createdAt_
            }
        }
        set(value) {
            objc_sync_enter(SocialMediaPresence.self)
            defer { objc_sync_exit(SocialMediaPresence.self) }
            do {
                SocialMediaPresence.createdAt_ = value
            }
        }
    }

    open var createdAt: GlobalDateTime? {
        get {
            return GlobalDateTime.castOptional(self.optionalValue(for: SocialMediaPresence.createdAt))
        }
        set(value) {
            self.setOptionalValue(for: SocialMediaPresence.createdAt, to: value)
        }
    }

    open class var createdBy: Property {
        get {
            objc_sync_enter(SocialMediaPresence.self)
            defer { objc_sync_exit(SocialMediaPresence.self) }
            do {
                return SocialMediaPresence.createdBy_
            }
        }
        set(value) {
            objc_sync_enter(SocialMediaPresence.self)
            defer { objc_sync_exit(SocialMediaPresence.self) }
            do {
                SocialMediaPresence.createdBy_ = value
            }
        }
    }

    open var createdBy: String? {
        get {
            return StringValue.optional(self.optionalValue(for: SocialMediaPresence.createdBy))
        }
        set(value) {
            self.setOptionalValue(for: SocialMediaPresence.createdBy, to: StringValue.of(optional: value))
        }
    }

    open class var id: Property {
        get {
            objc_sync_enter(SocialMediaPresence.self)
            defer { objc_sync_exit(SocialMediaPresence.self) }
            do {
                return SocialMediaPresence.id_
            }
        }
        set(value) {
            objc_sync_enter(SocialMediaPresence.self)
            defer { objc_sync_exit(SocialMediaPresence.self) }
            do {
                SocialMediaPresence.id_ = value
            }
        }
    }

    open var id: GuidValue? {
        get {
            return GuidValue.castOptional(self.optionalValue(for: SocialMediaPresence.id))
        }
        set(value) {
            self.setOptionalValue(for: SocialMediaPresence.id, to: value)
        }
    }

    open override var isProxy: Bool {
        return true
    }

    open class func key(id: GuidValue?) -> EntityKey {
        return EntityKey().with(name: "ID", value: id)
    }

    open class var member: Property {
        get {
            objc_sync_enter(SocialMediaPresence.self)
            defer { objc_sync_exit(SocialMediaPresence.self) }
            do {
                return SocialMediaPresence.member_
            }
        }
        set(value) {
            objc_sync_enter(SocialMediaPresence.self)
            defer { objc_sync_exit(SocialMediaPresence.self) }
            do {
                SocialMediaPresence.member_ = value
            }
        }
    }

    open var member: Member? {
        get {
            return CastOptional<Member>.from(self.optionalValue(for: SocialMediaPresence.member))
        }
        set(value) {
            self.setOptionalValue(for: SocialMediaPresence.member, to: value)
        }
    }

    open class var memberID: Property {
        get {
            objc_sync_enter(SocialMediaPresence.self)
            defer { objc_sync_exit(SocialMediaPresence.self) }
            do {
                return SocialMediaPresence.memberID_
            }
        }
        set(value) {
            objc_sync_enter(SocialMediaPresence.self)
            defer { objc_sync_exit(SocialMediaPresence.self) }
            do {
                SocialMediaPresence.memberID_ = value
            }
        }
    }

    open var memberID: GuidValue? {
        get {
            return GuidValue.castOptional(self.optionalValue(for: SocialMediaPresence.memberID))
        }
        set(value) {
            self.setOptionalValue(for: SocialMediaPresence.memberID, to: value)
        }
    }

    open class var modifiedAt: Property {
        get {
            objc_sync_enter(SocialMediaPresence.self)
            defer { objc_sync_exit(SocialMediaPresence.self) }
            do {
                return SocialMediaPresence.modifiedAt_
            }
        }
        set(value) {
            objc_sync_enter(SocialMediaPresence.self)
            defer { objc_sync_exit(SocialMediaPresence.self) }
            do {
                SocialMediaPresence.modifiedAt_ = value
            }
        }
    }

    open var modifiedAt: GlobalDateTime? {
        get {
            return GlobalDateTime.castOptional(self.optionalValue(for: SocialMediaPresence.modifiedAt))
        }
        set(value) {
            self.setOptionalValue(for: SocialMediaPresence.modifiedAt, to: value)
        }
    }

    open class var modifiedBy: Property {
        get {
            objc_sync_enter(SocialMediaPresence.self)
            defer { objc_sync_exit(SocialMediaPresence.self) }
            do {
                return SocialMediaPresence.modifiedBy_
            }
        }
        set(value) {
            objc_sync_enter(SocialMediaPresence.self)
            defer { objc_sync_exit(SocialMediaPresence.self) }
            do {
                SocialMediaPresence.modifiedBy_ = value
            }
        }
    }

    open var modifiedBy: String? {
        get {
            return StringValue.optional(self.optionalValue(for: SocialMediaPresence.modifiedBy))
        }
        set(value) {
            self.setOptionalValue(for: SocialMediaPresence.modifiedBy, to: StringValue.of(optional: value))
        }
    }

    open class var name: Property {
        get {
            objc_sync_enter(SocialMediaPresence.self)
            defer { objc_sync_exit(SocialMediaPresence.self) }
            do {
                return SocialMediaPresence.name_
            }
        }
        set(value) {
            objc_sync_enter(SocialMediaPresence.self)
            defer { objc_sync_exit(SocialMediaPresence.self) }
            do {
                SocialMediaPresence.name_ = value
            }
        }
    }

    open var name: String? {
        get {
            return StringValue.optional(self.optionalValue(for: SocialMediaPresence.name))
        }
        set(value) {
            self.setOptionalValue(for: SocialMediaPresence.name, to: StringValue.of(optional: value))
        }
    }

    open var old: SocialMediaPresence {
        return CastRequired<SocialMediaPresence>.from(self.oldEntity)
    }

    open class var url: Property {
        get {
            objc_sync_enter(SocialMediaPresence.self)
            defer { objc_sync_exit(SocialMediaPresence.self) }
            do {
                return SocialMediaPresence.url_
            }
        }
        set(value) {
            objc_sync_enter(SocialMediaPresence.self)
            defer { objc_sync_exit(SocialMediaPresence.self) }
            do {
                SocialMediaPresence.url_ = value
            }
        }
    }

    open var url: String? {
        get {
            return StringValue.optional(self.optionalValue(for: SocialMediaPresence.url))
        }
        set(value) {
            self.setOptionalValue(for: SocialMediaPresence.url, to: StringValue.of(optional: value))
        }
    }
}
