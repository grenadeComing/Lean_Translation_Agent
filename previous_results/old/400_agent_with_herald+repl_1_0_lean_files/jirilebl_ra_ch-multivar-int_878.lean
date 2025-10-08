import Mathlib

variable {n : ℕ}

-- We work in ℝ^n as (Fin n → ℝ)

variable (is_rectangle : Set (Fin n → ℝ) → Prop)
variable (volume : Set (Fin n → ℝ) → ℝ)

variable (Riemann_integrable_on : Set (Fin n → ℝ) → ((Fin n → ℝ) → ℝ) → Prop)
variable (integral_on : Set (Fin n → ℝ) → ((Fin n → ℝ) → ℝ) → ℝ)

theorem integrable_on_union_of_rectangles
  {R R' R'' : Set (Fin n → ℝ)}
  (hR : is_rectangle R)
  (hR' : is_rectangle R')
  (hR'' : is_rectangle R'')
  (hcover : R = R' ∪ R'')
  (hinter : is_rectangle (R' ∩ R''))
  (hvol0 : volume (R' ∩ R'') = 0)
  {f : (Fin n → ℝ) → ℝ}
  (hfiR' : Riemann_integrable_on R' f)
  (hfiR'' : Riemann_integrable_on R'' f) :
  Riemann_integrable_on R f ∧ integral_on R f = integral_on R' f + integral_on R'' f := by
  sorry
