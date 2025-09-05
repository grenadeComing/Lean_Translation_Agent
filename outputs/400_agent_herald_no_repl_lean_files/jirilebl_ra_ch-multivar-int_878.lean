import Mathlib

/-
Suppose R', R'' ⊆ ℝ^n are rectangles such that R = R' ∪ R'' is a rectangle and
R' ∩ R'' is a rectangle with one side of length 0 (so V(R' ∩ R'') = 0).
Let f : R → ℝ be a function such that f is Riemann integrable on R' and on R''.
Show that f is Riemann integrable on R and ∫_R f = ∫_{R'} f + ∫_{R''} f.
-/

variable {n : ℕ} {R R' R'' : Set (Fin n → ℝ)} {f : (Fin n → ℝ) → ℝ}

theorem rint_union_zero_inter
  (hR' : IsBox R') (hR'' : IsBox R'') (hR : IsBox R)
  (hunion : R = R' ∪ R'') (hinter : volume (R' ∩ R'') = 0)
  (hf1 : RiemannIntegrableOn f R') (hf2 : RiemannIntegrableOn f R'') :
  RiemannIntegrableOn f R ∧ (RiemannIntegral f R = RiemannIntegral f R' + RiemannIntegral f R'') := by sorry
