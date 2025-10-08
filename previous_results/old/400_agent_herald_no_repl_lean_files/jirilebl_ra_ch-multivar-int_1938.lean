import Mathlib

open MeasureTheory Set

/-- Let `m*` denote the outer measure on `ℝ^n` (defined via coverings by countably many open
rectangles). If `R ⊂ ℝ^n` is a closed rectangle, then `m*(R) = V(R)`, where `V(R)` is the
usual volume of `R`.  In this file we state the standard form: for `a b : Fin n → ℝ` with
`a ≤ b` coordinatewise, the closed box `Set.Icc a b` has Lebesgue volume equal to the
product of side-lengths. -/
theorem volume_Icc_eq_prod {n : ℕ} (a b : Fin n → ℝ) (h : ∀ i, a i ≤ b i) :
  MeasureTheory.volume (Set.Icc a b) = Finset.univ.prod (fun i => (b i - a i)) := by sorry
