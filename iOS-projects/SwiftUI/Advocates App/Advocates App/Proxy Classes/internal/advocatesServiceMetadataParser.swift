//# xsc 20.7.9

import Foundation
import SAPOData

internal class advocatesServiceMetadataParser {
    internal static let options: Int = (CSDLOption.allowCaseConflicts | CSDLOption.disableFacetWarnings | CSDLOption.disableNameValidation | CSDLOption.processMixedVersions | CSDLOption.ignoreUndefinedTerms)

    internal static let parsed: CSDLDocument = xs_immortalize(advocatesServiceMetadataParser.parse())

    static func parse() -> CSDLDocument {
        let parser = CSDLParser()
        parser.logWarnings = false
        parser.csdlOptions = advocatesServiceMetadataParser.options
        let metadata = parser.parseInProxy(advocatesServiceMetadataText.xml, url: "AdvocatesService")
        metadata.proxyVersion = "20.7.9"
        return metadata
    }
}
