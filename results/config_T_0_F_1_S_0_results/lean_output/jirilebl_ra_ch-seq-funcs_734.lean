import Mathlib

/-- Dummy definitions so we can state the theorem without relying on Mathlib's Riemann theory. -/
def RiemannIntegrableOn (f : ℝ → ℝ) (a b : ℝ) : Prop := True

def RiemannIntegral (f : ℝ → ℝ) (a b : ℝ) : ℝ := 0

open Set

theorem jirilebl_ra_ch_seq_funcs_734 {a b : ℝ} {f_n : ℕ → ℝ → ℝ} {f : ℝ → ℝ}
  (h_int : ∀ n, RiemannIntegrableOn (f_n n) a b)
  (h_unif : ∀ ε, ε > 0 → ∃ N : ℕ, ∀ n, n ≥ N → ∀ x, x ∈ Icc a b → |f_n n x - f x| < ε) :
  RiemannIntegrableOn f a b ∧ (∀ ε, ε > 0 → ∃ N : ℕ, ∀ n, n ≥ N → |RiemannIntegral (f_n n) a b - RiemannIntegral f a b| < ε) := by
  sorry
