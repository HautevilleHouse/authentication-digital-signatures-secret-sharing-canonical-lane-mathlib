import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AuthenticationDigitalSignaturesSecretSharingCanonicalLaneLean

structure AuthenticationAdmittedObject where
  scheme : Type
  keyGeneration : Type
  signature : Type
  secretSharing : Type
  securityProperties : Prop
  conclusion : securityProperties

structure AdmissibleClass where
  object : AuthenticationAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.securityProperties) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end AuthenticationDigitalSignaturesSecretSharingCanonicalLaneLean
end HautevilleHouse