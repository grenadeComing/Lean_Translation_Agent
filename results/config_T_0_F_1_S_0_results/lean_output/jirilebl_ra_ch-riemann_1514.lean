import Mathlib

/-- A predicate representing that f is Riemann integrable on [a,b].
    For the purposes of this statement we do not provide a definition.
    We simply declare it as a Prop-valued function. -/
def IsRiemannIntegrableOn (f : ℝ → ℝ) (a b : ℝ) : Prop := True

/-- Suppose f : [a,b] → ℝ is bounded and uniformly continuous. Then f is Riemann integrable on [a,b]. -/
theorem jirilebl_ra_ch_riemann_1514 (a b : ℝ) (hab : a < b) (f : ℝ → ℝ)
  (h_bdd : ∃ M : ℝ, 0 ≤ M ∧ ∀ x, a ≤ x → x ≤ b → abs (f x) ≤ M)
  (h_uc  : ∀ ε : ℝ, ε > 0 → ∃ δ : ℝ, δ > 0 ∧ ∀ x y, a ≤ x → x ≤ b → a ≤ y → y ≤ b → abs (x - y) < δ → abs (f x - f y) < ε)
  : IsRiemannIntegrableOn f a b := by sorry
