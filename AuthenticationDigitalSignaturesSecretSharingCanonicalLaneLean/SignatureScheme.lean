import AuthenticationDigitalSignaturesSecretSharingCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace AuthenticationDigitalSignaturesSecretSharingCanonicalLaneLean

structure SignaturePackage where
  message : Type
  signature : Type
  publicKey : Type
  privateKey : Type
  sign : privateKey → message → signature
  verify : publicKey → message → signature → Prop
  correctness : ∀ (sk : privateKey) (pk : publicKey) (m : message), verify pk m (sign sk m)
  existentialUnforgeability : Prop

structure SignatureEvidence (S : SignaturePackage) where
  correctnessClosed : S.correctness
  existentialUnforgeabilityClosed : S.existentialUnforgeability

def SignatureClosed (S : SignaturePackage) : Prop :=
  S.correctness ∧ S.existentialUnforgeability

theorem signature_closed_from_evidence (S : SignaturePackage) (E : SignatureEvidence S) :
    SignatureClosed S := by
  exact And.intro E.correctnessClosed E.existentialUnforgeabilityClosed

end AuthenticationDigitalSignaturesSecretSharingCanonicalLaneLean
end HautevilleHouse