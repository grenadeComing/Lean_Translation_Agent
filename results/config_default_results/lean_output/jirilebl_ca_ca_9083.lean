import Mathlib
open Set Filter Metric Complex
open scoped Topology

/-- If U ⊂ ℂ is open and f : U → ℂ is holomorphic and injective, then f'(z) ≠ 0 for every z ∈ U. -/
theorem deriv_ne_zero_of_injOn {U : Set ℂ} (hU : IsOpen U) {f : ℂ → ℂ} (hf : DifferentiableOn ℂ f U)
    (h_inj : InjOn f U) : ∀ z ∈ U, deriv f z ≠ 0 := by sorry
