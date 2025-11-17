import Mathlib
open Set

/-- Local injectivity on a set: for each z in U there exists a radius r > 0 such that f is injective on the ball B(z, r) ∩ U. -/
def LocallyInjectiveOn (f : ℂ → ℂ) (U : Set ℂ) : Prop :=
  ∀ z ∈ U, ∃ r > 0, ∀ w, dist w z < r → w ∈ U → f w = f z → w = z

/-- Suppose U ⊆ ℂ is open, f : U → ℂ is holomorphic, and f'(z) ≠ 0 for every z ∈ U. Show that f is locally injective on U. -/
theorem locally_injective_of_deriv_ne_zero {U : Set ℂ} (hU : IsOpen U) {f : ℂ → ℂ} (hf : DifferentiableOn ℂ f U)
    (hf' : ∀ z ∈ U, deriv f z ≠ 0) : LocallyInjectiveOn f U := by
  sorry
