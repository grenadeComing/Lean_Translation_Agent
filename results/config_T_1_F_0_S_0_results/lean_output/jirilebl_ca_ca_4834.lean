import Mathlib

/-- Suppose U ⊂ ℂ is open, f : U → ℂ is holomorphic (differentiable on U), and c ∈ ℂ.
Then the level set { z ∈ U | f z = c } is discrete. Furthermore, if p ∈ U and f p = c,
then there exist k ∈ ℕ, δ > 0 and a function g : ℂ → ℂ, differentiable on the open ball
Δ_δ(p) = Metric.ball p δ, such that g is not identically zero on Δ_δ(p),
for all z ∈ Δ_δ(p) we have f z - c = (z - p) ^ k * g z, and g p ≠ 0.
-/
theorem holomorphic_level_set_is_discrete {U : Set ℂ} (hU : IsOpen U) {f : ℂ → ℂ}
  (hf : DifferentiableOn ℂ f U) (c : ℂ) :
  IsDiscrete { z | z ∈ U ∧ f z = c } ∧
  ∀ p, p ∈ U → f p = c →
    ∃ (k : ℕ) (δ : ℝ) (hδ : 0 < δ) (g : ℂ → ℂ),
      DifferentiableOn ℂ g (Metric.ball p δ) ∧
      ¬(∀ z ∈ Metric.ball p δ, g z = 0) ∧
      (∀ z ∈ Metric.ball p δ, f z - c = (z - p) ^ k * g z) ∧
      g p ≠ 0 := by sorry