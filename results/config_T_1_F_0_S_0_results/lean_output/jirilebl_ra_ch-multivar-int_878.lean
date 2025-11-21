import Mathlib

variables {n : ℕ} {R R' R'' : Set (Fin n → ℝ)} (f : (Fin n → ℝ) → ℝ)

/-- Suppose R', R'' ⊆ ℝ^n are rectangles such that R = R' ∪ R'' is a rectangle and
    R' ∩ R'' is a rectangle with one side of length 0 (so volume (R' ∩ R'') = 0).
    If f : R → ℝ is Riemann integrable on R' and on R'', then f is Riemann integrable on R
    and ∫_R f = ∫_{R'} f + ∫_{R''} f. -/
theorem riemann_integrable_on_union_of_adjacent_rectangles
  (hR : IsRectangle R) (hR' : IsRectangle R') (hR'' : IsRectangle R'')
  (hunion : R = R' ∪ R'') (hinter : IsRectangle (R' ∩ R'')) (hzero : volume (R' ∩ R'') = 0)
  (hfR' : RiemannIntegrableOn f R' volume) (hfR'' : RiemannIntegrableOn f R'' volume) :
  RiemannIntegrableOn f R volume ∧ ∫ x in R, f x = ∫ x in R', f x + ∫ x in R'', f x := by sorry