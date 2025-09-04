import Mathlib

open Set

/-- Maximum modulus principle (local version). -/
theorem maximum_modulus_principle_local {U : Set ℂ} (hU : IsOpen U) {f : ℂ → ℂ}
  (hd : DifferentiableOn ℂ f U) {z0 : ℂ} (hz0 : z0 ∈ U)
  (hmax : IsLocalMax (fun z => Complex.abs (f z)) z0) :
  ∃ s : Set ℂ, IsOpen s ∧ z0 ∈ s ∧ s ⊆ U ∧ ∀ z ∈ s, f z = f z0 := by sorry
