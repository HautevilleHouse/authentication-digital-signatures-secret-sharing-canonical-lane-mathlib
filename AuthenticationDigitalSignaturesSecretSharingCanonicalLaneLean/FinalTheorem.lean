import AuthenticationDigitalSignaturesSecretSharingCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace AuthenticationDigitalSignaturesSecretSharingCanonicalLaneLean

def ConstrainedAuthenticationClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_authentication_endgame (A : AdmissibleClass) :
    ConstrainedAuthenticationClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end AuthenticationDigitalSignaturesSecretSharingCanonicalLaneLean
end HautevilleHouse