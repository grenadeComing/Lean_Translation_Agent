import Mathlib

variable {IsRectangle : ∀ {n : ℕ}, Set (Fin n → ℝ) → Prop}
variable {volume : ∀ {n : ℕ}, Set (Fin n → ℝ) → ℝ}
variable {RiemannIntegrableOn : ∀ {n : ℕ}, ((Fin n → ℝ) → ℝ) → Set (Fin n → ℝ) → Prop}
variable {integral : ∀ {n : ℕ}, ((Fin n → ℝ) → ℝ) → Set (Fin n → ℝ) → ℝ}

/-- Suppose R',R'' ⊂ ℝ^n are rectangles such that R = R' ∪ R'' is a rectangle and
    R' ∩ R'' is a rectangle with one side of length 0 (so volume (R' ∩ R'') = 0).
    Let f : R → ℝ be a function such that f is Riemann integrable on R' and on R''.
    Then f is Riemann integrable on R and integral f R = integral f R' + integral f R''.
-/
theorem integral_union_of_zero_inter {n : ℕ} (R R' R'' : Set (Fin n → ℝ)) (f : (Fin n → ℝ) → ℝ)
  (hR : IsRectangle R) (hR' : IsRectangle R') (hR'' : IsRectangle R'') (hunion : R = R' ∪ R'')
  (hinter : IsRectangle (R' ∩ R'')) (hzero : volume (R' ∩ R'') = 0)
  (hf' : RiemannIntegrableOn f R') (hf'' : RiemannIntegrableOn f R'') :
  RiemannIntegrableOn f R ∧ integral f R = integral f R' + integral f R'' := by sorry
