import Mathlib

open Set

/-- Placeholder predicate for Riemann integrability on a set. In a full development this would be
    Riemann.integrable_on from Mathlib. We define it here so the file typechecks.
-/
def RiemannIntegrableOn (f : ℝ → ℝ) (s : Set ℝ) : Prop := True

/-
Suppose f : [a,b] → ℝ is bounded and uniformly continuous. Prove f is Riemann integrable.
We state the lemma for f : ℝ → ℝ restricted to the closed interval Icc a b.
-/

theorem uniform_continuous_bounded_on_riemann_integrable_on (a b : ℝ) (f : ℝ → ℝ)
  (hab : a < b) (huc : UniformContinuousOn f (Icc a b)) (hb : BoundedOn (Icc a b) f) :
  RiemannIntegrableOn f (Icc a b) := by sorry
