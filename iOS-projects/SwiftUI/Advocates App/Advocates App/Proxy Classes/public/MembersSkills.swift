//# xsc 20.7.9

import Foundation
import SAPOData

open class MembersSkills: EntityValue {
    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
    }

    private static var id_: Property = advocatesServiceMetadata.EntityTypes.membersSkills.property(withName: "ID")

    private static var createdAt_: Property = advocatesServiceMetadata.EntityTypes.membersSkills.property(withName: "createdAt")

    private static var createdBy_: Property = advocatesServiceMetadata.EntityTypes.membersSkills.property(withName: "createdBy")

    private static var modifiedAt_: Property = advocatesServiceMetadata.EntityTypes.membersSkills.property(withName: "modifiedAt")

    private static var modifiedBy_: Property = advocatesServiceMetadata.EntityTypes.membersSkills.property(withName: "modifiedBy")

    private static var memberID_: Property = advocatesServiceMetadata.EntityTypes.membersSkills.property(withName: "member_ID")

    private static var skillID_: Property = advocatesServiceMetadata.EntityTypes.membersSkills.property(withName: "skill_ID")

    private static var memberIDID_: Property = advocatesServiceMetadata.EntityTypes.membersSkills.property(withName: "member_ID_ID")

    private static var skillIDID_: Property = advocatesServiceMetadata.EntityTypes.membersSkills.property(withName: "skill_ID_ID")

    public init(withDefaults: Bool = true, withIndexMap: SparseIndexMap? = nil) {
        super.init(withDefaults: withDefaults, type: advocatesServiceMetadata.EntityTypes.membersSkills, withIndexMap: withIndexMap)
    }

    open class func array(from: EntityValueList) -> Array<MembersSkills> {
        return ArrayConverter.convert(from.toArray(), Array<MembersSkills>())
    }

    open func copy() -> MembersSkills {
        return CastRequired<MembersSkills>.from(self.copyEntity())
    }

    open class var createdAt: Property {
        get {
            objc_sync_enter(MembersSkills.self)
            defer { objc_sync_exit(MembersSkills.self); }
            do {
                return MembersSkills.createdAt_
            }
        }
        set(value) {
            objc_sync_enter(MembersSkills.self)
            defer { objc_sync_exit(MembersSkills.self); }
            do {
                MembersSkills.createdAt_ = value
            }
        }
    }

    open var createdAt: GlobalDateTime? {
        get {
            return GlobalDateTime.castOptional(self.optionalValue(for: MembersSkills.createdAt))
        }
        set(value) {
            self.setOptionalValue(for: MembersSkills.createdAt, to: value)
        }
    }

    open class var createdBy: Property {
        get {
            objc_sync_enter(MembersSkills.self)
            defer { objc_sync_exit(MembersSkills.self); }
            do {
                return MembersSkills.createdBy_
            }
        }
        set(value) {
            objc_sync_enter(MembersSkills.self)
            defer { objc_sync_exit(MembersSkills.self); }
            do {
                MembersSkills.createdBy_ = value
            }
        }
    }

    open var createdBy: String? {
        get {
            return StringValue.optional(self.optionalValue(for: MembersSkills.createdBy))
        }
        set(value) {
            self.setOptionalValue(for: MembersSkills.createdBy, to: StringValue.of(optional: value))
        }
    }

    open class var id: Property {
        get {
            objc_sync_enter(MembersSkills.self)
            defer { objc_sync_exit(MembersSkills.self); }
            do {
                return MembersSkills.id_
            }
        }
        set(value) {
            objc_sync_enter(MembersSkills.self)
            defer { objc_sync_exit(MembersSkills.self); }
            do {
                MembersSkills.id_ = value
            }
        }
    }

    open var id: GuidValue? {
        get {
            return GuidValue.castOptional(self.optionalValue(for: MembersSkills.id))
        }
        set(value) {
            self.setOptionalValue(for: MembersSkills.id, to: value)
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

    open class var memberID: Property {
        get {
            objc_sync_enter(MembersSkills.self)
            defer { objc_sync_exit(MembersSkills.self); }
            do {
                return MembersSkills.memberID_
            }
        }
        set(value) {
            objc_sync_enter(MembersSkills.self)
            defer { objc_sync_exit(MembersSkills.self); }
            do {
                MembersSkills.memberID_ = value
            }
        }
    }

    open var memberID: Member? {
        get {
            return CastOptional<Member>.from(self.optionalValue(for: MembersSkills.memberID))
        }
        set(value) {
            self.setOptionalValue(for: MembersSkills.memberID, to: value)
        }
    }

    open class var memberIDID: Property {
        get {
            objc_sync_enter(MembersSkills.self)
            defer { objc_sync_exit(MembersSkills.self); }
            do {
                return MembersSkills.memberIDID_
            }
        }
        set(value) {
            objc_sync_enter(MembersSkills.self)
            defer { objc_sync_exit(MembersSkills.self); }
            do {
                MembersSkills.memberIDID_ = value
            }
        }
    }

    open var memberIDID: GuidValue? {
        get {
            return GuidValue.castOptional(self.optionalValue(for: MembersSkills.memberIDID))
        }
        set(value) {
            self.setOptionalValue(for: MembersSkills.memberIDID, to: value)
        }
    }

    open class var modifiedAt: Property {
        get {
            objc_sync_enter(MembersSkills.self)
            defer { objc_sync_exit(MembersSkills.self); }
            do {
                return MembersSkills.modifiedAt_
            }
        }
        set(value) {
            objc_sync_enter(MembersSkills.self)
            defer { objc_sync_exit(MembersSkills.self); }
            do {
                MembersSkills.modifiedAt_ = value
            }
        }
    }

    open var modifiedAt: GlobalDateTime? {
        get {
            return GlobalDateTime.castOptional(self.optionalValue(for: MembersSkills.modifiedAt))
        }
        set(value) {
            self.setOptionalValue(for: MembersSkills.modifiedAt, to: value)
        }
    }

    open class var modifiedBy: Property {
        get {
            objc_sync_enter(MembersSkills.self)
            defer { objc_sync_exit(MembersSkills.self); }
            do {
                return MembersSkills.modifiedBy_
            }
        }
        set(value) {
            objc_sync_enter(MembersSkills.self)
            defer { objc_sync_exit(MembersSkills.self); }
            do {
                MembersSkills.modifiedBy_ = value
            }
        }
    }

    open var modifiedBy: String? {
        get {
            return StringValue.optional(self.optionalValue(for: MembersSkills.modifiedBy))
        }
        set(value) {
            self.setOptionalValue(for: MembersSkills.modifiedBy, to: StringValue.of(optional: value))
        }
    }

    open var old: MembersSkills {
        get {
            return CastRequired<MembersSkills>.from(self.oldEntity)
        }
    }

    open class var skillID: Property {
        get {
            objc_sync_enter(MembersSkills.self)
            defer { objc_sync_exit(MembersSkills.self); }
            do {
                return MembersSkills.skillID_
            }
        }
        set(value) {
            objc_sync_enter(MembersSkills.self)
            defer { objc_sync_exit(MembersSkills.self); }
            do {
                MembersSkills.skillID_ = value
            }
        }
    }

    open var skillID: Skill? {
        get {
            return CastOptional<Skill>.from(self.optionalValue(for: MembersSkills.skillID))
        }
        set(value) {
            self.setOptionalValue(for: MembersSkills.skillID, to: value)
        }
    }

    open class var skillIDID: Property {
        get {
            objc_sync_enter(MembersSkills.self)
            defer { objc_sync_exit(MembersSkills.self); }
            do {
                return MembersSkills.skillIDID_
            }
        }
        set(value) {
            objc_sync_enter(MembersSkills.self)
            defer { objc_sync_exit(MembersSkills.self); }
            do {
                MembersSkills.skillIDID_ = value
            }
        }
    }

    open var skillIDID: GuidValue? {
        get {
            return GuidValue.castOptional(self.optionalValue(for: MembersSkills.skillIDID))
        }
        set(value) {
            self.setOptionalValue(for: MembersSkills.skillIDID, to: value)
        }
    }
}
