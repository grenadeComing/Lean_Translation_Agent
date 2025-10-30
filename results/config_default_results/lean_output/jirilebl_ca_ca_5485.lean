import Mathlib
open Complex

/-- Schwarz lemma variant: If f : D → D is holomorphic on the unit disk and f(0) = 0, then |f'(0)| ≤ 1. -/
theorem abs_deriv_le_one_of_maps_unitDisc {f : 𝔻 → 𝔻} (hfc : Differentiable ℂ f) (h₀ : f 0 = 0) :
  Complex.abs (hfc.deriv (0:𝔻)) ≤ 1 := by
  sorry
