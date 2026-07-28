import HautevilleHouse.AuthenticationDigitalSignaturesSecretSharingCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AuthenticationDigitalSignaturesSecretSharingCanonicalLaneLean

structure SecretSharingPackage (A : AdmissibleClass) where
  shareDistribution : Prop
  reconstruction : Prop
  perfectPrivacy : Prop
  thresholdSecurity : Prop

structure SecretSharingEvidence {A : AdmissibleClass} (P : SecretSharingPackage A) where
  shareDistributionClosed : P.shareDistribution
  reconstructionClosed : P.reconstruction
  perfectPrivacyClosed : P.perfectPrivacy
  thresholdSecurityClosed : P.thresholdSecurity

def SecretSharingClosed {A : AdmissibleClass} (P : SecretSharingPackage A) : Prop :=
  P.shareDistribution ∧ P.reconstruction ∧ P.perfectPrivacy ∧ P.thresholdSecurity

theorem secret_sharing_closed_from_evidence {A : AdmissibleClass} (P : SecretSharingPackage A)
    (E : SecretSharingEvidence P) : SecretSharingClosed P := by
  exact And.intro E.shareDistributionClosed (And.intro E.reconstructionClosed (And.intro E.perfectPrivacyClosed E.thresholdSecurityClosed))

end AuthenticationDigitalSignaturesSecretSharingCanonicalLaneLean
end HautevilleHouse
