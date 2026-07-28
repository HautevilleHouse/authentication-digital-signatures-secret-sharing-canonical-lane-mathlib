import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AuthenticationDigitalSignaturesSecretSharingCanonicalLaneLean

structure DigitalSignatureScheme where
  message : Type u
  signature : Type v
  key : Type w
  sign : key → message → signature
  verify : key → message → signature → Prop
  correctness : ∀ (k : key) (m : message), verify k m (sign k m)
  security : Prop -- e.g., existential unforgeability

structure DigitalSignatureEvidence (D : DigitalSignatureScheme) where
  correctnessClosed : D.correctness
  securityClosed : D.security

def DigitalSignatureClosed (D : DigitalSignatureScheme) : Prop :=
  D.correctness ∧ D.security

theorem digital_signature_closed_from_evidence (D : DigitalSignatureScheme) (E : DigitalSignatureEvidence D) :
    DigitalSignatureClosed D := by
  exact And.intro E.correctnessClosed E.securityClosed

end AuthenticationDigitalSignaturesSecretSharingCanonicalLaneLean
end HautevilleHouse