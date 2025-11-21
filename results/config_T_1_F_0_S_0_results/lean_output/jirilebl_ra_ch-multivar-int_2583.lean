import Mathlib

/-- Let R \subset \mathbb{R}^n be a closed rectangle and let f \colon R \to \mathbb{R} be Riemann integrable with f(x) \ge 0 for all x \in R. Show that if \int_R f = 0, then there exists a set E \subset R of outer measure zero such that f(x) = 0 for all x \in R \setminus E. -/
theorem exists_subset_of_outer_measure_zero_of_nonneg_riemann_integral_zero (n : ℕ)
  (R : Set (Fin n → ℝ)) (f : (Fin n → ℝ) → ℝ)
  (f_nonneg : ∀ x ∈ R, 0 ≤ f x) (R_closed : IsClosed R)
  (f_riemann : RiemannIntegrable f R)
  (h_int : ∫⁻ (x : Fin n → ℝ) in R, ENNReal.ofReal (f x) = 0) :
  ∃ E ⊆ R, OuterMeasure.mkMetric E = 0 ∧ ∀ x ∈ R \ E, f x = 0 := by sorry
