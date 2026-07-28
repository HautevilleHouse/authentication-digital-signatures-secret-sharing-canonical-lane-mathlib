import AuthenticationDigitalSignaturesSecretSharingCanonicalLaneLean.SignatureSchemePackage

namespace HautevilleHouse
namespace AuthenticationDigitalSignaturesSecretSharingCanonicalLaneLean

structure SecretSharingSchemePackage {K : KeyGenerationPackage} {S : SignatureSchemePackage K} where
  secretSpace : Type u
  shareSpace : Type v
  shareCount : ℕ
  threshold : ℕ
  sharingAlgorithm : secretSpace → (Fin shareCount → shareSpace)
  reconstructionAlgorithm : (Fin shareCount → Option shareSpace) → Option secretSpace
  correctness : Prop
  perfectSecrecy : Prop
  cheatResistance : Prop

structure SecretSharingSchemeEvidence {K : KeyGenerationPackage} {S : SignatureSchemePackage K} (T : SecretSharingSchemePackage K S) where
  correctnessClosed : T.correctness
  perfectSecrecyClosed : T.perfectSecrecy
  cheatResistanceClosed : T.cheatResistance

def SecretSharingSchemeClosed {K : KeyGenerationPackage} {S : SignatureSchemePackage K} (T : SecretSharingSchemePackage K S) : Prop :=
  T.correctness ∧ T.perfectSecrecy ∧ T.cheatResistance

theorem secret_sharing_scheme_closed_from_evidence {K : KeyGenerationPackage} {S : SignatureSchemePackage K} (T : SecretSharingSchemePackage K S) (E : SecretSharingSchemeEvidence T) :
    SecretSharingSchemeClosed T := by
  exact And.intro E.correctnessClosed (And.intro E.perfectSecrecyClosed E.cheatResistanceClosed)

end AuthenticationDigitalSignaturesSecretSharingCanonicalLaneLean
end HautevilleHouse