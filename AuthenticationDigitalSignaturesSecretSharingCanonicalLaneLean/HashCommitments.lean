import AuthenticationDigitalSignaturesSecretSharingCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AuthenticationDigitalSignaturesSecretSharingCanonicalLaneLean

structure HashCommitmentPackage where
  hashFunction : Prop
  commitmentBinding : Prop
  commitmentHiding : Prop
  openingVerification : Prop

structure HashCommitmentEvidence (H : HashCommitmentPackage) where
  hashFunctionClosed : H.hashFunction
  commitmentBindingClosed : H.commitmentBinding
  commitmentHidingClosed : H.commitmentHiding
  openingVerificationClosed : H.openingVerification

def HashCommitmentClosed (H : HashCommitmentPackage) : Prop :=
  H.hashFunction ∧ H.commitmentBinding ∧ H.commitmentHiding ∧ H.openingVerification

theorem hash_commitment_closed_from_evidence (H : HashCommitmentPackage)
    (E : HashCommitmentEvidence H) : HashCommitmentClosed H := by
  exact And.intro E.hashFunctionClosed (And.intro E.commitmentBindingClosed
    (And.intro E.commitmentHidingClosed E.openingVerificationClosed))

end AuthenticationDigitalSignaturesSecretSharingCanonicalLaneLean
end HautevilleHouse