import Mathlib

open Set IntervalIntegral Filter Topology

/-- Suppose f_n → f uniformly on [a,b] and g is continuous on [a,b].
    Then ∫_a^b f_n * g → ∫_a^b f * g. -/
theorem integral_mul_of_uniform_convergence (a b : ℝ) (f : ℝ → ℝ) (f_n : ℕ → ℝ → ℝ) (g : ℝ → ℝ)
  (h_ab : a ≤ b)
  (hu : ∀ ε > 0, ∃ N : ℕ, ∀ n : ℕ, n ≥ N → ∀ x : ℝ, x ∈ Icc a b → |f_n n x - f x| ≤ ε)
  (hg : ContinuousOn g (Icc a b)) :
  Tendsto (fun n => ∫ x in a..b, (f_n n x) * g x) atTop (𝓝 (∫ x in a..b, f x * g x)) :=
  by sorry
