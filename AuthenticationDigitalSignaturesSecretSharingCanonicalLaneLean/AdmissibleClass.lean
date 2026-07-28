import HautevilleHouse.AuthenticationDigitalSignaturesSecretSharingCanonicalLaneLean.CryptographicPrimitives

namespace HautevilleHouse
namespace AuthenticationDigitalSignaturesSecretSharingCanonicalLaneLean

structure AuthenticationDigitalSignatureSecretSharingAdmittedObject where
  authenticationProperty : Prop
  signatureProperty : Prop
  secretSharingProperty : Prop
  conclusion : authenticationProperty ∧ signatureProperty ∧ secretSharingProperty

structure AdmissibleClass where
  object : AuthenticationDigitalSignatureSecretSharingAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end AuthenticationDigitalSignaturesSecretSharingCanonicalLaneLean
end HautevilleHouse
