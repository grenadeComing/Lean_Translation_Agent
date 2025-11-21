import Mathlib
open Set Filter Metric Complex
open scoped Topology

/-- Suppose f : D -> D is holomorphic and f(0) = 0, then |f'(0)| ≤ 1. Here D is the unit disk in the complex plane. -/
theorem schwarz_lemma {f : ℂ → ℂ} (h_hol : IsHolomorphicOn f (ball 0 1)) (h_map : ∀ z ∈ ball 0 1, f z ∈ ball 0 1) (h0 : f 0 = 0) : ‖fderiv ℂ f 0‖ ≤ 1 :=  by sorry