import Mathlib

variable {a b : ℝ}

variable (RiemannIntegrableOn : (ℝ → ℝ) → ℝ → ℝ → Prop)
variable (RiemannIntegral : (ℝ → ℝ) → ℝ → ℝ → ℝ)

theorem uniform_limit_of_riemann_integrable_functions {f_seq : ℕ → ℝ → ℝ} {f : ℝ → ℝ}
  (h_int : ∀ n, RiemannIntegrableOn (f_seq n) a b)
  (h_unif : ∀ ε > 0, ∃ N : ℕ, ∀ n ≥ N, ∀ x, a ≤ x → x ≤ b → abs (f_seq n x - f x) ≤ ε) :
  RiemannIntegrableOn f a b ∧ (∀ ε > 0, ∃ N : ℕ, ∀ n ≥ N, abs (RiemannIntegral (f_seq n) a b - RiemannIntegral f a b) ≤ ε) := by sorry