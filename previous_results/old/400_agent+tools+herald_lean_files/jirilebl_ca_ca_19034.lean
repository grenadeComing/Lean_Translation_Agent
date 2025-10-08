import Mathlib
open TopologicalSpace Metric Set Filter Asymptotics Function
open scoped Topology Filter NNReal Real

/-- Suppose U ⊂ ℂ is open, f : U → ℂ is holomorphic, and f'(p) ≠ 0 for some p ∈ U. Then there exist neighborhoods V of p and W of f(p) such that f : V → W is a bijection and f^{-1} is holomorphic. -/
theorem exists_bijective_inverse_holomorphic_on_nhds_of_deriv_ne_zero {U : Set ℂ} (hU : IsOpen U)
    {f : ℂ → ℂ} (hf : DifferentiableOn ℂ f U) (p : ℂ) (hp : p ∈ U) (h : deriv f p ≠ 0) :
    ∃ V ∈ 𝓝 p, ∃ W ∈ 𝓝 (f p), ∃ g : ℂ → ℂ,
      Bijective g ∧ (∀ z ∈ V, g z ∈ W) ∧ (∀ z ∈ V, g (f z) = z) ∧ (∀ z ∈ W, f (g z) = z) ∧
        DifferentiableOn ℂ g U := by sorry
