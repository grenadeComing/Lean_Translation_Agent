import Mathlib

open MeasureTheory Set

variable {n : ℕ}
variable {R : Set (Fin n → ℝ)}
variable {f : (Fin n → ℝ) → ℝ}

/-- Let R ⊆ ℝ^n be a closed rectangle and let f : R → ℝ be integrable w.r.t. volume with f(x) ≥ 0 on R.
If ∫_R f = 0, then there exists a measurable set E ⊆ R of measure zero such that f(x) = 0 for all x ∈ R \ E. -/
theorem exists_measurable_null_set_of_zero (hR : IsClosed R)
  (hf_int : MeasureTheory.IntegrableOn f R volume) (hf_nonneg : ∀ x ∈ R, 0 ≤ f x)
  (h : ∫ x in R, f x ∂volume = 0) :
  ∃ E : Set (Fin n → ℝ), E ⊆ R ∧ MeasurableSet E ∧ volume E = 0 ∧ ∀ x ∈ R \ E, f x = 0 := by
  sorry
