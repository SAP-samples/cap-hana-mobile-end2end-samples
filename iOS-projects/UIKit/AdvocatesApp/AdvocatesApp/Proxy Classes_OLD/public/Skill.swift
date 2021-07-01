// # Proxy Compiler 20.7.9

import Foundation
import SAPOData

open class Skill: EntityValue {
    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
    }

    private static var id_: Property = EntityContainerMetadata.EntityTypes.skill.property(withName: "ID")

    private static var createdAt_: Property = EntityContainerMetadata.EntityTypes.skill.property(withName: "createdAt")

    private static var createdBy_: Property = EntityContainerMetadata.EntityTypes.skill.property(withName: "createdBy")

    private static var modifiedAt_: Property = EntityContainerMetadata.EntityTypes.skill.property(withName: "modifiedAt")

    private static var modifiedBy_: Property = EntityContainerMetadata.EntityTypes.skill.property(withName: "modifiedBy")

    private static var name_: Property = EntityContainerMetadata.EntityTypes.skill.property(withName: "name")

    private static var member_: Property = EntityContainerMetadata.EntityTypes.skill.property(withName: "member")

    public init(withDefaults: Bool = true, withIndexMap: SparseIndexMap? = nil) {
        super.init(withDefaults: withDefaults, type: EntityContainerMetadata.EntityTypes.skill, withIndexMap: withIndexMap)
    }

    open class func array(from: EntityValueList) -> [Skill] {
        return ArrayConverter.convert(from.toArray(), [Skill]())
    }

    open func copy() -> Skill {
        return CastRequired<Skill>.from(self.copyEntity())
    }

    open class var createdAt: Property {
        get {
            objc_sync_enter(Skill.self)
            defer { objc_sync_exit(Skill.self) }
            do {
                return Skill.createdAt_
            }
        }
        set(value) {
            objc_sync_enter(Skill.self)
            defer { objc_sync_exit(Skill.self) }
            do {
                Skill.createdAt_ = value
            }
        }
    }

    open var createdAt: GlobalDateTime? {
        get {
            return GlobalDateTime.castOptional(self.optionalValue(for: Skill.createdAt))
        }
        set(value) {
            self.setOptionalValue(for: Skill.createdAt, to: value)
        }
    }

    open class var createdBy: Property {
        get {
            objc_sync_enter(Skill.self)
            defer { objc_sync_exit(Skill.self) }
            do {
                return Skill.createdBy_
            }
        }
        set(value) {
            objc_sync_enter(Skill.self)
            defer { objc_sync_exit(Skill.self) }
            do {
                Skill.createdBy_ = value
            }
        }
    }

    open var createdBy: String? {
        get {
            return StringValue.optional(self.optionalValue(for: Skill.createdBy))
        }
        set(value) {
            self.setOptionalValue(for: Skill.createdBy, to: StringValue.of(optional: value))
        }
    }

    open class var id: Property {
        get {
            objc_sync_enter(Skill.self)
            defer { objc_sync_exit(Skill.self) }
            do {
                return Skill.id_
            }
        }
        set(value) {
            objc_sync_enter(Skill.self)
            defer { objc_sync_exit(Skill.self) }
            do {
                Skill.id_ = value
            }
        }
    }

    open var id: GuidValue? {
        get {
            return GuidValue.castOptional(self.optionalValue(for: Skill.id))
        }
        set(value) {
            self.setOptionalValue(for: Skill.id, to: value)
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
            objc_sync_enter(Skill.self)
            defer { objc_sync_exit(Skill.self) }
            do {
                return Skill.member_
            }
        }
        set(value) {
            objc_sync_enter(Skill.self)
            defer { objc_sync_exit(Skill.self) }
            do {
                Skill.member_ = value
            }
        }
    }

    open var member: [MembersSkills] {
        get {
            return ArrayConverter.convert(Skill.member.entityList(from: self).toArray(), [MembersSkills]())
        }
        set(value) {
            Skill.member.setEntityList(in: self, to: EntityValueList.fromArray(ArrayConverter.convert(value, [EntityValue]())))
        }
    }

    open class var modifiedAt: Property {
        get {
            objc_sync_enter(Skill.self)
            defer { objc_sync_exit(Skill.self) }
            do {
                return Skill.modifiedAt_
            }
        }
        set(value) {
            objc_sync_enter(Skill.self)
            defer { objc_sync_exit(Skill.self) }
            do {
                Skill.modifiedAt_ = value
            }
        }
    }

    open var modifiedAt: GlobalDateTime? {
        get {
            return GlobalDateTime.castOptional(self.optionalValue(for: Skill.modifiedAt))
        }
        set(value) {
            self.setOptionalValue(for: Skill.modifiedAt, to: value)
        }
    }

    open class var modifiedBy: Property {
        get {
            objc_sync_enter(Skill.self)
            defer { objc_sync_exit(Skill.self) }
            do {
                return Skill.modifiedBy_
            }
        }
        set(value) {
            objc_sync_enter(Skill.self)
            defer { objc_sync_exit(Skill.self) }
            do {
                Skill.modifiedBy_ = value
            }
        }
    }

    open var modifiedBy: String? {
        get {
            return StringValue.optional(self.optionalValue(for: Skill.modifiedBy))
        }
        set(value) {
            self.setOptionalValue(for: Skill.modifiedBy, to: StringValue.of(optional: value))
        }
    }

    open class var name: Property {
        get {
            objc_sync_enter(Skill.self)
            defer { objc_sync_exit(Skill.self) }
            do {
                return Skill.name_
            }
        }
        set(value) {
            objc_sync_enter(Skill.self)
            defer { objc_sync_exit(Skill.self) }
            do {
                Skill.name_ = value
            }
        }
    }

    open var name: String? {
        get {
            return StringValue.optional(self.optionalValue(for: Skill.name))
        }
        set(value) {
            self.setOptionalValue(for: Skill.name, to: StringValue.of(optional: value))
        }
    }

    open var old: Skill {
        return CastRequired<Skill>.from(self.oldEntity)
    }
}
