import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AuthenticationDigitalSignaturesSecretSharingCanonicalLaneLean

structure CryptoAdmittedObject where
  signatureScheme : Type u
  keyPair : Type v
  signing : keyPair → signatureScheme → signatureScheme
  verification : keyPair → signatureScheme → Prop
  verificationCorrect : ∀ (k : keyPair) (m : signatureScheme), verification k (signing k m)
  secretSharingScheme : Type w
  dealer : Type x
  shares : dealer → secretSharingScheme → List (secretSharingScheme)
  reconstruction : List (secretSharingScheme) → secretSharingScheme
  reconstructionCorrect : ∀ (d : dealer) (s : secretSharingScheme), reconstruction (shares d s) = s
  conclusion : verificationCorrect ∧ reconstructionCorrect

end AuthenticationDigitalSignaturesSecretSharingCanonicalLaneLean
end HautevilleHouse