import Mathlib

open Set MeasureTheory

/--
Let R ⊂ ℝ^n be a closed rectangle and let f : R → ℝ be Riemann integrable with f(x) ≥ 0 for all x ∈ R.
If the integral of f over R is 0, then there exists a set E ⊂ R of (Lebesgue) outer measure zero
such that f(x) = 0 for all x ∈ R \ E.
-/
theorem jirilebl_ra_ch_multivar_int_2583 {n : ℕ} {a b : Fin n → ℝ}
  (h_ab : ∀ i, a i ≤ b i) (f : (Fin n → ℝ) → ℝ)
  (hRint : IsRiemannIntegrableOn f (Set.Icc a b))
  (hf_nonneg : ∀ x ∈ Set.Icc a b, 0 ≤ f x)
  (hint : (∫ x in Set.Icc a b, f x) = 0) :
  ∃ E : Set (Fin n → ℝ), E ⊆ Set.Icc a b ∧ MeasurableSet E ∧ volume E = 0 ∧ ∀ x ∈ Set.Icc a b \ E, f x = 0 := by sorry
