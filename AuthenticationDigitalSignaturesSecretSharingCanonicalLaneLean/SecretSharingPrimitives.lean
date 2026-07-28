import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AuthenticationDigitalSignaturesSecretSharingCanonicalLaneLean

structure SecretSharingScheme where
  secret : Type u
  share : Type v
  participant : Type w
  dealer : Type x
  distribute : dealer → secret → List (share × participant)
  reconstruct : List share → secret
  correctness : ∀ (d : dealer) (s : secret) (threshold : ℕ),
    (List.length (distribute d s) ≥ threshold) →
    reconstruct (List.map Prod.fst (distribute d s)) = s
  security : Prop -- e.g., any subset of size less than threshold learns nothing

structure SecretSharingEvidence (S : SecretSharingScheme) where
  correctnessClosed : S.correctness
  securityClosed : S.security

def SecretSharingClosed (S : SecretSharingScheme) : Prop :=
  S.correctness ∧ S.security

theorem secret_sharing_closed_from_evidence (S : SecretSharingScheme) (E : SecretSharingEvidence S) :
    SecretSharingClosed S := by
  exact And.intro E.correctnessClosed E.securityClosed

end AuthenticationDigitalSignaturesSecretSharingCanonicalLaneLean
end HautevilleHouse