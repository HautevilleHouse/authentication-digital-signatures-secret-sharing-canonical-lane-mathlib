import HautevilleHouse.AuthenticationDigitalSignaturesSecretSharingCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AuthenticationDigitalSignaturesSecretSharingCanonicalLaneLean

structure AuthenticationPackage (A : AdmissibleClass) where
  challengeResponse : Prop
  mutualAuthentication : Prop
  sessionKeyEstablishment : Prop

structure AuthenticationEvidence {A : AdmissibleClass} (P : AuthenticationPackage A) where
  challengeResponseClosed : P.challengeResponse
  mutualAuthenticationClosed : P.mutualAuthentication
  sessionKeyEstablishmentClosed : P.sessionKeyEstablishment

def AuthenticationClosed {A : AdmissibleClass} (P : AuthenticationPackage A) : Prop :=
  P.challengeResponse ∧ P.mutualAuthentication ∧ P.sessionKeyEstablishment

theorem authentication_closed_from_evidence {A : AdmissibleClass} (P : AuthenticationPackage A)
    (E : AuthenticationEvidence P) : AuthenticationClosed P := by
  exact And.intro E.challengeResponseClosed (And.intro E.mutualAuthenticationClosed E.sessionKeyEstablishmentClosed)

end AuthenticationDigitalSignaturesSecretSharingCanonicalLaneLean
end HautevilleHouse
