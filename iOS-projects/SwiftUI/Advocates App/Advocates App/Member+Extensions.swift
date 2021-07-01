//
//  Member+Extensions.swift
//  Advocates App
//
//  Created by Muessig, Kevin on 29.06.21.
//

import Foundation
import FioriSwiftUICore
import SwiftUI

extension Member: Identifiable {}

extension Member: ObjectItemModel {
    public var title_: String {
        firstName! + " " + lastName!
    }
    
    public var subtitle_: String? {
        title!
    }
    
    public var footnote_: String? {
        focusArea!
    }
    
    public var descriptionText_: String? {
        description!
    }
    
    public var status_: TextOrIcon? {
        nil
    }
    
    public var substatus_: TextOrIcon? {
        nil
    }
    
    public var detailImage_: Image? {
        nil
    }
    
    public var icons_: [TextOrIcon]? {
        nil
    }
    
    public var actionText_: String? {
        nil
    }
    
    public func didSelectAction() {
        ()
    }
    
    
}
