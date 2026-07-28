import AuthenticationDigitalSignaturesSecretSharingCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace AuthenticationDigitalSignaturesSecretSharingCanonicalLaneLean

def gateClosed (A : AdmissibleCryptoClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleCryptoClass) :
    gateClosed A := by
  exact A.gateWitness

end AuthenticationDigitalSignaturesSecretSharingCanonicalLaneLean
end HautevilleHouse