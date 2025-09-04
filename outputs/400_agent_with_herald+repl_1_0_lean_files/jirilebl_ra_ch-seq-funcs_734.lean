import Mathlib

variable {a b : ℝ}
variable (f_seq : ℕ → ℝ → ℝ) (f : ℝ → ℝ)
variable (RiemannIntegrableOn : (ℝ → ℝ) → Set ℝ → Prop)
variable (riemannIntegral : (ℝ → ℝ) → Set ℝ → ℝ)
variable (UniformLimitOnSeq : (ℕ → ℝ → ℝ) → (ℝ → ℝ) → Set ℝ → Prop)

theorem uniform_limit_of_riemann_integrable
  (h_int : ∀ n, RiemannIntegrableOn (f_seq n) (Set.Icc a b))
  (h_unif : UniformLimitOnSeq f_seq f (Set.Icc a b)) :
  RiemannIntegrableOn f (Set.Icc a b) ∧
  (∀ ε : ℝ, ε > 0 → ∃ N : ℕ, ∀ n : ℕ, n ≥ N → |riemannIntegral (f_seq n) (Set.Icc a b) - riemannIntegral f (Set.Icc a b)| < ε) := by sorry
