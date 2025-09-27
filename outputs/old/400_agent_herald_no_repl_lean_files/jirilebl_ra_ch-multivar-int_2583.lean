import Mathlib
open MeasureTheory Set
open scoped ENNReal

variable {n : ℕ}

/-- A closed rectangle (box) in ℝ^n determined by lower and upper bounds a, b. -/
def box (a b : Fin n → ℝ) : Set (Fin n → ℝ) := { x | ∀ i, a i ≤ x i ∧ x i ≤ b i }

/-- Let R be a closed rectangle in ℝ^n and f : R → ℝ be Riemann integrable with f ≥ 0 on R.
    If the integral of f over R is zero, then f vanishes outside a set of Lebesgue outer measure zero. -/
theorem nonneg_riemann_integral_zero_ae_zero {a b : Fin n → ℝ} {R : Set (Fin n → ℝ)} (f : (Fin n → ℝ) → ℝ)
  (hR : R = box a b) (h_int : RiemannIntegrableOn f R) (h_nonneg : ∀ x ∈ R, 0 ≤ f x)
  (h_integral_zero : ∫ x in R, f x = 0) :
  ∃ E ⊆ R, volume E = 0 ∧ ∀ x ∈ R \ E, f x = 0 := by sorry
