import Mathlib

/-- Two outer measures on R^n: m_star and mu_star (definitions omitted). -/
theorem mu_star_eq_m_star {n : ℕ} (m_star mu_star : Set (Fin n → ℝ) → ℝ) (S : Set (Fin n → ℝ)) :
  mu_star S = m_star S := by
  sorry
