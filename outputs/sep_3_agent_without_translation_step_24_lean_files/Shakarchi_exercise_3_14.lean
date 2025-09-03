import Mathlib

/-- Exercise: An entire injective function is affine. -/
theorem entire_injective_affine {f : ℂ → ℂ}
  (h_entire : Differentiable (𝕜 := ℂ) f)
  (h_inj : Function.Injective f) :
  ∃ a b : ℂ, a ≠ 0 ∧ f = fun z => a * z + b := by sorry
