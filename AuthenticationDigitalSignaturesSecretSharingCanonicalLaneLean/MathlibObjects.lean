import AuthenticationDigitalSignaturesSecretSharingCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore

namespace HautevilleHouse
namespace AuthenticationDigitalSignaturesSecretSharingCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure AuthSecretSpace where
  carrier : Type
  operations : Set (carrier → carrier → carrier) -- example

structure AuthSecretObject where
  space : AuthSecretSpace
  signatureScheme : Prop
  secretSharingScheme : Prop
  authenticationProtocol : Prop
  endpointWitness : signatureScheme ∧ secretSharingScheme ∧ authenticationProtocol
  conclusion : signatureScheme ∧ secretSharingScheme ∧ authenticationProtocol

structure AuthSecretEndgameState where
  object : AuthSecretObject

def AuthSecretWitnessClosed (O : AuthSecretObject) : Prop :=
  O.signatureScheme ∧ O.secretSharingScheme ∧ O.authenticationProtocol

end AuthenticationDigitalSignaturesSecretSharingCanonicalLaneLean
end HautevilleHouse