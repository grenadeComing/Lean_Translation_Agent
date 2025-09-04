import Mathlib
open Real

/-!
Addition formulas for sine and cosine.
We state both identities together and leave the proof as `sorry`.
-/

theorem sin_cos_add (θ1 θ2 : ℝ) :
  cos (θ1 + θ2) = cos θ1 * cos θ2 - sin θ1 * sin θ2 ∧
  sin (θ1 + θ2) = sin θ1 * cos θ2 + cos θ1 * sin θ2 :=
by sorry
