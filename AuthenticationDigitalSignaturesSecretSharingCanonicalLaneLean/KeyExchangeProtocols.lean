import AuthenticationDigitalSignaturesSecretSharingCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AuthenticationDigitalSignaturesSecretSharingCanonicalLaneLean

structure KeyExchangeProtocolPackage where
  keyGeneration : Prop
  exchangeMessages : Prop
  sessionKeyDerivation : Prop
  securityProperties : Prop
  forwardSecrecy : Prop

structure KeyExchangeProtocolEvidence (K : KeyExchangeProtocolPackage) where
  keyGenerationClosed : K.keyGeneration
  exchangeMessagesClosed : K.exchangeMessages
  sessionKeyDerivationClosed : K.sessionKeyDerivation
  securityPropertiesClosed : K.securityProperties
  forwardSecrecyClosed : K.forwardSecrecy

def KeyExchangeProtocolClosed (K : KeyExchangeProtocolPackage) : Prop :=
  K.keyGeneration ∧ K.exchangeMessages ∧ K.sessionKeyDerivation ∧ K.securityProperties ∧ K.forwardSecrecy

theorem key_exchange_protocol_closed_from_evidence (K : KeyExchangeProtocolPackage)
    (E : KeyExchangeProtocolEvidence K) : KeyExchangeProtocolClosed K := by
  exact And.intro E.keyGenerationClosed (And.intro E.exchangeMessagesClosed (And.intro E.sessionKeyDerivationClosed
    (And.intro E.securityPropertiesClosed E.forwardSecrecyClosed)))

end AuthenticationDigitalSignaturesSecretSharingCanonicalLaneLean
end HautevilleHouse