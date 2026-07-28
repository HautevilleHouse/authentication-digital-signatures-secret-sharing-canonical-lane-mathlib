import HautevilleHouse.AuthenticationDigitalSignaturesSecretSharingCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AuthenticationDigitalSignaturesSecretSharingCanonicalLaneLean

structure DigitalSignaturePackage (A : AdmissibleClass) where
  keyGeneration : Prop
  signing : Prop
  verification : Prop
  existentialUnforgeability : Prop

structure DigitalSignatureEvidence {A : AdmissibleClass} (P : DigitalSignaturePackage A) where
  keyGenerationClosed : P.keyGeneration
  signingClosed : P.signing
  verificationClosed : P.verification
  existentialUnforgeabilityClosed : P.existentialUnforgeability

def DigitalSignatureClosed {A : AdmissibleClass} (P : DigitalSignaturePackage A) : Prop :=
  P.keyGeneration ∧ P.signing ∧ P.verification ∧ P.existentialUnforgeability

theorem digital_signature_closed_from_evidence {A : AdmissibleClass} (P : DigitalSignaturePackage A)
    (E : DigitalSignatureEvidence P) : DigitalSignatureClosed P := by
  exact And.intro E.keyGenerationClosed (And.intro E.signingClosed (And.intro E.verificationClosed E.existentialUnforgeabilityClosed))

end AuthenticationDigitalSignaturesSecretSharingCanonicalLaneLean
end HautevilleHouse
