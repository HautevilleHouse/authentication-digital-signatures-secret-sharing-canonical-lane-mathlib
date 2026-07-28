import AuthenticationDigitalSignaturesSecretSharingCanonicalLaneLean.KeyGenerationPackage

namespace HautevilleHouse
namespace AuthenticationDigitalSignaturesSecretSharingCanonicalLaneLean

structure SignatureSchemePackage {K : KeyGenerationPackage} where
  messageSpace : Type u
  signatureSpace : Type v
  signingAlgorithm : K.keySpace → messageSpace → signatureSpace
  verificationAlgorithm : K.keySpace → messageSpace → signatureSpace → Bool
  correctness : Prop
  existentialUnforgeability : Prop
  strongUnforgeability : Prop

structure SignatureSchemeEvidence {K : KeyGenerationPackage} (S : SignatureSchemePackage K) where
  correctnessClosed : S.correctness
  existentialUnforgeabilityClosed : S.existentialUnforgeability
  strongUnforgeabilityClosed : S.strongUnforgeability

def SignatureSchemeClosed {K : KeyGenerationPackage} (S : SignatureSchemePackage K) : Prop :=
  S.correctness ∧ S.existentialUnforgeability ∧ S.strongUnforgeability

theorem signature_scheme_closed_from_evidence {K : KeyGenerationPackage} (S : SignatureSchemePackage K) (E : SignatureSchemeEvidence S) :
    SignatureSchemeClosed S := by
  exact And.intro E.correctnessClosed (And.intro E.existentialUnforgeabilityClosed E.strongUnforgeabilityClosed)

end AuthenticationDigitalSignaturesSecretSharingCanonicalLaneLean
end HautevilleHouse