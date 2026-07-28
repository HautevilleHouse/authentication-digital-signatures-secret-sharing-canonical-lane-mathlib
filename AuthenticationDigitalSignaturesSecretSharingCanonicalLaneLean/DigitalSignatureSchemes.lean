import AuthenticationDigitalSignaturesSecretSharingCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AuthenticationDigitalSignaturesSecretSharingCanonicalLaneLean

structure DigitalSignatureSchemePackage where
  keyGeneration : Prop
  signing : Prop
  verification : Prop
  existentialUnforgeability : Prop
  strongUnforgeability : Prop

structure DigitalSignatureSchemeEvidence (P : DigitalSignatureSchemePackage) where
  keyGenerationClosed : P.keyGeneration
  signingClosed : P.signing
  verificationClosed : P.verification
  existentialUnforgeabilityClosed : P.existentialUnforgeability
  strongUnforgeabilityClosed : P.strongUnforgeability

def DigitalSignatureSchemeClosed (P : DigitalSignatureSchemePackage) : Prop :=
  P.keyGeneration ∧ P.signing ∧ P.verification ∧ P.existentialUnforgeability ∧ P.strongUnforgeability

theorem digital_signature_scheme_closed_from_evidence (P : DigitalSignatureSchemePackage)
    (E : DigitalSignatureSchemeEvidence P) : DigitalSignatureSchemeClosed P := by
  exact And.intro E.keyGenerationClosed (And.intro E.signingClosed (And.intro E.verificationClosed
    (And.intro E.existentialUnforgeabilityClosed E.strongUnforgeabilityClosed)))

end AuthenticationDigitalSignaturesSecretSharingCanonicalLaneLean
end HautevilleHouse