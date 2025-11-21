import Mathlib

variable (IsHolomorphicOn : (ℂ → ℂ) → Set ℂ → Prop)

/--
Let U ⊂ ℂ be an open set and f : U → ℂ be a holomorphic function. If |f| attains a local maximum
at some point z0 ∈ U, then f is constant in a neighborhood of z0.
This is stated here using a predicate `IsHolomorphicOn f U` for holomorphicity.
-/
theorem maximum_modulus_principle_local {U : Set ℂ} (hU : IsOpen U) {f : ℂ → ℂ}
  (hf : IsHolomorphicOn f U) {z0 : ℂ} (hz0 : z0 ∈ U)
  (hmax : ∃ r : ℝ, 0 < r ∧ ∀ z, z ∈ U → dist z z0 < r → (f z).re * (f z).re + (f z).im * (f z).im ≤ (f z0).re * (f z0).re + (f z0).im * (f z0).im) :
  ∃ r : ℝ, 0 < r ∧ ∀ z, z ∈ U → dist z z0 < r → f z = f z0 := by sorry
