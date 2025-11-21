import Mathlib

/-\nWe state a multivariate Riemann-integral additivity lemma for two rectangles whose
intersection has zero volume. The file only contains the statement (no proof), as
requested.
-/

variable {n : ℕ}

def Rectangle (n : ℕ) := Set (Fin n → ℝ)

variable (IsRectangle : Rectangle n → Prop)
variable (volume : Rectangle n → ℝ)
variable (RiemannIntegrableOn : ((Fin n → ℝ) → ℝ) → Rectangle n → Prop)
variable (integralOn : ((Fin n → ℝ) → ℝ) → Rectangle n → ℝ)

lemma integral_on_union_of_zero_intersection
  {R R' R'' : Rectangle n}
  (hR' : IsRectangle R')
  (hR'' : IsRectangle R'')
  (hR : IsRectangle R)
  (hR_eq : R = R' ∪ R'')
  (hinter : IsRectangle (R' ∩ R''))
  (hvol : volume (R' ∩ R'') = 0)
  {f : (Fin n → ℝ) → ℝ}
  (hf1 : RiemannIntegrableOn f R')
  (hf2 : RiemannIntegrableOn f R'') :
  RiemannIntegrableOn f R ∧ integralOn f R = integralOn f R' + integralOn f R'' := by sorry
