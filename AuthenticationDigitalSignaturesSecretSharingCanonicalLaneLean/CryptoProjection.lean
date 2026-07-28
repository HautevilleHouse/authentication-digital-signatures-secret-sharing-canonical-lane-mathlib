import AuthenticationDigitalSignaturesSecretSharingCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AuthenticationDigitalSignaturesSecretSharingCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure CryptoEndgameState where
  object : CryptoAdmittedObject

def cryptoProjection : Projection CryptoEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem crypto_projection_idempotent (x : CryptoEndgameState) :
    cryptoProjection.toFun (cryptoProjection.toFun x) = cryptoProjection.toFun x := by
  exact cryptoProjection.idempotent x

end AuthenticationDigitalSignaturesSecretSharingCanonicalLaneLean
end HautevilleHouse