import AuthenticationDigitalSignaturesSecretSharingCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AuthenticationDigitalSignaturesSecretSharingCanonicalLaneLean

structure AuthenticationProtocolPackage where
  prover : Prop
  verifier : Prop
  challengeGeneration : Prop
  responseGeneration : Prop
  verificationSoundness : Prop
  zeroKnowledge : Prop

structure AuthenticationProtocolEvidence (A : AuthenticationProtocolPackage) where
  proverClosed : A.prover
  verifierClosed : A.verifier
  challengeGenerationClosed : A.challengeGeneration
  responseGenerationClosed : A.responseGeneration
  verificationSoundnessClosed : A.verificationSoundness
  zeroKnowledgeClosed : A.zeroKnowledge

def AuthenticationProtocolClosed (A : AuthenticationProtocolPackage) : Prop :=
  A.prover ∧ A.verifier ∧ A.challengeGeneration ∧ A.responseGeneration ∧ A.verificationSoundness ∧ A.zeroKnowledge

theorem authentication_protocol_closed_from_evidence (A : AuthenticationProtocolPackage)
    (E : AuthenticationProtocolEvidence A) : AuthenticationProtocolClosed A := by
  exact And.intro E.proverClosed (And.intro E.verifierClosed (And.intro E.challengeGenerationClosed
    (And.intro E.responseGenerationClosed (And.intro E.verificationSoundnessClosed E.zeroKnowledgeClosed))))

end AuthenticationDigitalSignaturesSecretSharingCanonicalLaneLean
end HautevilleHouse