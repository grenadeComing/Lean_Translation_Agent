import Mathlib

/-- Additivity of the Riemann integral on rectangles (statement only).
    We keep the predicates and the integral abstract and pass them as hypotheses
    so the file only states the theorem, not proves it. -/

theorem jirilebl_ra_ch_multivar_int_878 {n : ℕ} {R R' R'' : Set (Fin n → ℝ)} {f : (Fin n → ℝ) → ℝ}
  (IsRectangle : Set (Fin n → ℝ) → Prop)
  (IsDegenerateRectangle : Set (Fin n → ℝ) → Prop)
  (IsRiemannIntegrableOn : ((Fin n → ℝ) → ℝ) → Set (Fin n → ℝ) → Prop)
  (riemann_integral : ((Fin n → ℝ) → ℝ) → Set (Fin n → ℝ) → ℝ)
  (hR_rect : IsRectangle R)
  (hR'_rect : IsRectangle R')
  (hR''_rect : IsRectangle R'')
  (hcover : R = R' ∪ R'')
  (hinter_rect_deg : IsRectangle (R' ∩ R'') ∧ IsDegenerateRectangle (R' ∩ R''))
  (hR'_int : IsRiemannIntegrableOn f R')
  (hR''_int : IsRiemannIntegrableOn f R'') :
  IsRiemannIntegrableOn f R ∧ riemann_integral f R = riemann_integral f R' + riemann_integral f R'' := by
  sorry
