import AuthenticationDigitalSignaturesSecretSharingCanonicalLaneLean.AuthenticationAdmissibleClass

namespace HautevilleHouse
namespace AuthenticationDigitalSignaturesSecretSharingCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.securityProperties

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end AuthenticationDigitalSignaturesSecretSharingCanonicalLaneLean
end HautevilleHouse