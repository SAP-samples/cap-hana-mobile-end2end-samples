import os
from subprocess import Popen, PIPE
import sys
from os import environ

class NoProvisionalProfileFoundException(Exception):
        def __init__(self, message):
            print("error: Provisioning Profile is None. No Provisioning Profile is set for platform macOS")
            print("Steps to set Provisioning Profile:")

            print("\tStep 1: Go to your Apple Developer Account Page")
            print("\tStep 2: Go to Certificates, Identifiers & Profiles -> Identifiers")
            print("\tStep 3: Select the app id of your project")
            print("\tStep 4: Edit the app id configurations. Search for Capability with name Mac Catalyst")
            print("\tStep 5: Enable Mac Catalyst and Configure the Mac Catalyst Capability and Choose Automatically create an identifier. Save changes")
            print("\tStep 6: Create a macOS Provisioning Profile with this app id. Download and import this provisioning profile")
            print("\tStep 7: Verify that Provisioning Profile is set correctly")

            Exception.__init__(message)

class AmbiguousIdentityException(Exception):
    def __init__(self, message):
        print("error: Apple Development Identity is Ambiguous. Multiple Certificates are found in your keychain for identity Apple Development")
        print("Steps to overcome the issue:")
        print("\tStep 1: Create a user-defined build setting in Xcode with name DEVELOPER_SIGNING_CERTIFICATE")
        print("\tStep 2: Enter the value of the setting DEVELOPER_SIGNING_CERTIFICATE with the Common Name of the certificate. If the Common Name isn't unique, use SHA-1 fingerprint.")
        print("\tStep 3: If using Common Name, go to your Keychain Access->login. Select the required certificate->Get Info. Copy the Common Name value")
        print("\tStep 4: If using SHA-1 fingerprint, go to your Keychain Access->login. Select the required certificate->Get Info. Copy the SHA-1 fingerprint value")
        print("\tStep 5: Paste this copied value to the build setting DEVELOPER_SIGNING_CERTIFICATE created above")

class NoCodeSignIdentityFound(Exception):
    def __init__(self, message):
        print("error: CodeSign Identity is None. Select a Signing Certificate for platform macOS")
        print("Steps to overcome the issue:")
        print("\tStep 1: Go to Capabilities & Signing Section in Xcode")
        print("\tStep 2: Select a Signing Certificate for platform macOS")

class CodeSign:
    def __init__(self):
        self.cwd = os.getcwd()
        self.buildPath = os.getenv('CONFIGURATION_BUILD_DIR')
        self.sdk = os.getenv('SDK_NAME')

        self.profile = os.getenv('PROVISIONING_PROFILE_SPECIFIER')

        #Check if Provisioning Profile is none
        if 'PROVISIONING_PROFILE_SPECIFIER' in os.environ:
            self.profile = os.getenv('PROVISIONING_PROFILE_SPECIFIER')
            print("Provisioning Profile is set to : " + self.profile)
        else:
            #Check if Signing is Automatic or manual
            self.signingStyle = os.getenv('CODE_SIGN_STYLE')

            if self.signingStyle == 'Automatic' or self.signingStyle == None:
                print("warning: Some capabilities might be missing from the app if Provisioning Profile is not set which may result in failure of operations such as Restore")
                print("Steps to add such capabilities")
                print("\tStep 1: Add an App Group Capability from Signing & Capabilities Section using +Capability tab")
                print("\tStep 2: Create an App Group identifier under Signing & Capabilities -> App Groups")
                print("\tStep 3: Verify that Provisioning Profile is set to Xcode Managed Profile")
                print("warning: Please ignore the above warning if you have already set a Provisioning Profile")
            elif self.signingStyle == 'Manual' :
                raise NoProvisionalProfileFoundException(Exception())

        self.codeSignFrameworks(self.buildPath)

    def codeSignFrameworks(self, frameworkPath):
        if 'CODE_SIGN_IDENTITY' in os.environ:
            self.signingIdentity = os.getenv('CODE_SIGN_IDENTITY')
        else:
            # Raise Exception
            raise NoCodeSignIdentityFound(Exception())

        if 'DEVELOPER_SIGNING_CERTIFICATE' in os.environ:
            self.signingIdentity = os.getenv('DEVELOPER_SIGNING_CERTIFICATE')
        
        print("Certificate to be used for Signing : " + self.signingIdentity)

        frameworks = ["SAPCommon", "SAPFoundation", "SAPFiori", "SAPFioriFlows", "SAPOData", "SAPOfflineOData"]

        for framework in frameworks:

            if self.sdk.startswith('macosx'):
                binaryPath = frameworkPath + "/" + framework + ".framework/Versions/A"
                print("Signing binaries on path : " + binaryPath)
                codesignCommand = ["codesign", "--timestamp", "--options=runtime", "--verbose=2", "--force", "--sign" , self.signingIdentity, binaryPath]

                p = Popen(codesignCommand, stderr=PIPE, stdout=PIPE)
                err = p.stderr.read()
                print(err)

                if err.find("ambiguous") != -1:
                    raise AmbiguousIdentityException(Exception())

CodeSign()
