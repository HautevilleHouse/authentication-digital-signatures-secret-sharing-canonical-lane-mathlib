import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AuthenticationDigitalSignaturesSecretSharingCanonicalLaneLean

structure AuthenticationProtocol where
  prover : Type u
  verifier : Type v
  transcript : Type w
  challenge : Type x
  response : Type y
  runProtocol : prover → verifier → challenge → prover × response
  verifyTranscript : verifier → transcript → Prop
  completeness : ∀ (p : prover) (v : verifier) (c : challenge),
    let (p', r) := runProtocol p v c in
    let t : transcript := (c, r) -- assume transcript is pair
    verifyTranscript v t
  soundness : Prop

structure AuthenticationEvidence (A : AuthenticationProtocol) where
  completenessClosed : A.completeness
  soundnessClosed : A.soundness

def AuthenticationClosed (A : AuthenticationProtocol) : Prop :=
  A.completeness ∧ A.soundness

theorem authentication_closed_from_evidence (A : AuthenticationProtocol) (E : AuthenticationEvidence A) :
    AuthenticationClosed A := by
  exact And.intro E.completenessClosed E.soundnessClosed

end AuthenticationDigitalSignaturesSecretSharingCanonicalLaneLean
end HautevilleHouse