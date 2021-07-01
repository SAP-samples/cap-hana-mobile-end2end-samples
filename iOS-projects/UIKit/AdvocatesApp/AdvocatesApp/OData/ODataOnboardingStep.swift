//
// AdvocatesApp
//
// Created by SAP BTP SDK Assistant for iOS application on 20/05/21
//

import SAPCommon
import SAPFioriFlows
import SAPFoundation

open class ODataOnboardingStep: OnboardingStep {
    var controllers: [String: ODataControlling] = [:]
    private let logger = Logger.shared(named: "AppDelegateLogger")

    public func onboard(context: OnboardingContext, completionHandler: @escaping (OnboardingResult) -> Void) {
        self.configureOData(using: context, completionHandler: completionHandler)
    }

    public func restore(context: OnboardingContext, completionHandler: @escaping (OnboardingResult) -> Void) {
        self.configureOData(using: context, completionHandler: completionHandler)
    }

    public func reset(context: OnboardingContext, completionHandler: @escaping () -> Void) {
        defer { completionHandler() }
        do {
            try ComsapdevrelOfflineODataController.removeStore(for: context.onboardingID)
        } catch {
            self.logger.error("Remove Offline Store failed", error: error)
        }
    }

    // Read more about consumption of OData services in mobile applications: https://help.sap.com/viewer/fc1a59c210d848babfb3f758a6f55cb1/Latest/en-US/1c7d937d0c8a43f4aca7175e9051d108.html
    private func configureOData(using context: OnboardingContext, completionHandler: @escaping (OnboardingResult) -> Void) {
        context.presentationDelegate.setInfoText("Synchronizing Data")

        var odataControllers = [String: ODataControlling]()
        let destinations = FileConfigurationProvider("AppParameters").provideConfiguration().configuration["Destinations"] as! NSDictionary

        odataControllers[destinations["com.sap.devrel"] as! String] = ComsapdevrelOfflineODataController()

        for (destinationId, odataController) in odataControllers {
            // Adjust this path so it can be called after authentication and returns an HTTP 200 code. This is used to validate the authentication was successful.
            let configurationURL = URL(string: (context.info[.sapcpmsSettingsParameters] as! SAPcpmsSettingsParameters).backendURL.appendingPathComponent(destinationId).absoluteString)!

            do {
                try odataController.configureOData(sapURLSession: context.sapURLSession, serviceRoot: configurationURL, onboardingID: context.onboardingID)

                odataController.openOfflineStore(synchronize: false) { error in
                    if let error = error {
                        completionHandler(.failed(error))
                        return
                    }

                    self.controllers[destinationId] = odataController
                    completionHandler(.success(context))
                }
            } catch {
                completionHandler(.failed(error))
            }
        }
    }
}
