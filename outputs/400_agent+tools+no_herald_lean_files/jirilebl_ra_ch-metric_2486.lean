import Mathlib

/-- Placeholder predicate for Riemann integrability on a set. In this file we only state the
    classical theorem (continuous on a closed bounded interval implies Riemann integrable) as a
    declaration, not providing a proof. -/
def RiemannIntegrableOn (f : ℝ → ℝ) (s : Set ℝ) : Prop := True

theorem continuous_on_Icc_riemann_integrable {a b : ℝ} (h : a ≤ b) (f : ℝ → ℝ)
  (hf : ContinuousOn f (Icc a b)) :
  RiemannIntegrableOn f (Icc a b) := by sorry
