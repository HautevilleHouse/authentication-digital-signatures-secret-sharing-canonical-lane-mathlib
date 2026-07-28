import AuthenticationDigitalSignaturesSecretSharingCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AuthenticationDigitalSignaturesSecretSharingCanonicalLaneLean

structure SecretSharingSchemePackage where
  dealerDistribution : Prop
  shareCombination : Prop
  reconstruction : Prop
  perfectSecrecy : Prop
  thresholdProperty : Prop

structure SecretSharingSchemeEvidence (S : SecretSharingSchemePackage) where
  dealerDistributionClosed : S.dealerDistribution
  shareCombinationClosed : S.shareCombination
  reconstructionClosed : S.reconstruction
  perfectSecrecyClosed : S.perfectSecrecy
  thresholdPropertyClosed : S.thresholdProperty

def SecretSharingSchemeClosed (S : SecretSharingSchemePackage) : Prop :=
  S.dealerDistribution ∧ S.shareCombination ∧ S.reconstruction ∧ S.perfectSecrecy ∧ S.thresholdProperty

theorem secret_sharing_scheme_closed_from_evidence (S : SecretSharingSchemePackage)
    (E : SecretSharingSchemeEvidence S) : SecretSharingSchemeClosed S := by
  exact And.intro E.dealerDistributionClosed (And.intro E.shareCombinationClosed (And.intro E.reconstructionClosed
    (And.intro E.perfectSecrecyClosed E.thresholdPropertyClosed)))

end AuthenticationDigitalSignaturesSecretSharingCanonicalLaneLean
end HautevilleHouse