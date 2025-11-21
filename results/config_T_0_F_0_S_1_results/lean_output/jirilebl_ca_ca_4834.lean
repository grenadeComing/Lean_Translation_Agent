import Mathlib

/--
Suppose U ⊂ ℂ is open, f : U → ℂ is holomorphic, and c ∈ ℂ. Then the zero set { z ∈ U | f z = c }
is a discrete set. Furthermore, if p ∈ U and f(p) = c, then there exists δ > 0 and a holomorphic
g : ball p δ → ℂ such that g is not identically zero, f(z) - c = (z - p)^k * g(z) for all z ∈ ball p δ,
and g(p) ≠ 0, where k ∈ ℕ is fixed.
-/

theorem holomorphic_zero_set_discrete_and_local_factorization {U : Set ℂ} (hU : IsOpen U)
  {f : ℂ → ℂ} (hf : IsHolomorphicOn f U) (c : ℂ) :
  (∀ p ∈ U, f p = c → ∃ δ > 0, Metric.ball p δ ∩ {z | z ∈ U ∧ f z = c} = {p}) ∧
  (∀ p ∈ U, f p = c → ∃ (δ : ℝ) (k : ℕ) (g : ℂ → ℂ),
     0 < δ ∧ Metric.ball p δ ⊆ U ∧ IsHolomorphicOn g (Metric.ball p δ) ∧ g p ≠ 0 ∧
     ∀ z ∈ Metric.ball p δ, f z - c = (z - p) ^ k * g z) := by sorry
