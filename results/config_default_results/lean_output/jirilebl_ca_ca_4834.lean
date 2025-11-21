import Mathlib

open Set Metric

/-- Suppose U ⊆ ℂ is open, f : U → ℂ is holomorphic, and c ∈ ℂ. Then the zero set { z ∈ U | f z = c } is discrete.
    Furthermore, if p ∈ U and f p = c, then there exists δ > 0 and a holomorphic g : ball p δ → ℂ such that
    g is not identically zero, g p ≠ 0, and for all z in ball p δ we have f z - c = (z - p) ^ k * g z, for some k ∈ ℕ.

    (Statement given here encodes holomorphic by `DifferentiableOn ℂ f U` and expresses discreteness via local isolation.) -/
theorem zero_set_is_discrete_and_local_factorization (U : Set ℂ) (hU : IsOpen U)
  (f : ℂ → ℂ) (hf : DifferentiableOn ℂ f U) (c : ℂ) :
  (∀ p : ℂ, p ∈ U → f p = c → ∃ δ : ℝ, 0 < δ ∧ (f ⁻¹' {c} ∩ U ∩ ball p δ) = {p}) ∧
  (∀ p : ℂ, p ∈ U → f p = c → ∃ k : ℕ, ∃ δ : ℝ, 0 < δ ∧ ∃ g : ℂ → ℂ,
      (∀ z : ℂ, z ∈ ball p δ → DifferentiableAt ℂ g z) ∧ (¬ (∀ z : ℂ, z ∈ ball p δ → g z = 0)) ∧ g p ≠ 0 ∧
      (∀ z : ℂ, z ∈ ball p δ → f z - c = (z - p) ^ k * g z)) := by sorry
