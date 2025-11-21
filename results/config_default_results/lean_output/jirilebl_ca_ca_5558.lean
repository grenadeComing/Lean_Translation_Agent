import Mathlib
open Set Filter Metric Complex
open scoped Topology

/-- Suppose f : 𝔻 → 𝔻 is holomorphic and f(0) = 0, then |f'(0)| ≤ 1. -/
theorem schwarz_lemma {f : ℂ → ℂ} (hf : DifferentiableOn ℂ f (ball (0:ℂ) 1)) (h_range : ∀ z, z ∈ ball (0:ℂ) 1 → f z ∈ ball (0:ℂ) 1) (h0 : f 0 = 0) : ‖(deriv f 0)‖ ≤ 1 := by sorry
