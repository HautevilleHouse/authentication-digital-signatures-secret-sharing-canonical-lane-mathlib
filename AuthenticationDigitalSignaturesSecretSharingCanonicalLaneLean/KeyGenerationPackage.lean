import AuthenticationDigitalSignaturesSecretSharingCanonicalLaneLean.AuthenticationAdmissibleClass

namespace HautevilleHouse
namespace AuthenticationDigitalSignaturesSecretSharingCanonicalLaneLean

structure KeyGenerationPackage where
  keySpace : Type u
  randomness : Type v
  keyGenerationAlgorithm : randomness → keySpace
  keyLength : ℕ
  securityParameter : ℕ
  distributionCloseToUniform : Prop
  keyUniqueness : Prop

structure KeyGenerationEvidence (K : KeyGenerationPackage) where
  distributionCloseToUniformClosed : K.distributionCloseToUniform
  keyUniquenessClosed : K.keyUniqueness

def KeyGenerationClosed (K : KeyGenerationPackage) : Prop :=
  K.distributionCloseToUniform ∧ K.keyUniqueness

theorem key_generation_closed_from_evidence (K : KeyGenerationPackage) (E : KeyGenerationEvidence K) :
    KeyGenerationClosed K := by
  exact And.intro E.distributionCloseToUniformClosed E.keyUniquenessClosed

end AuthenticationDigitalSignaturesSecretSharingCanonicalLaneLean
end HautevilleHouse