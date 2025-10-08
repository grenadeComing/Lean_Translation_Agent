import Mathlib

/-!
Statement: Let ε > 0, let p(z) be a nonconstant complex polynomial, or more generally a nonconstant power series
converging in { z ∈ ℂ : |z - z0| < ε }, and suppose p(z0) ≠ 0. Then there exists w in the disk such that |p(w)| < |p(z0)|.

We state this for a nonconstant holomorphic function on the open ball around z0.
-/

open Complex Set

theorem exists_point_with_smaller_modulus {ε : ℝ} {z0 : ℂ} (hε : 0 < ε) {p : ℂ → ℂ}
  (hp : IsHolomorphicOn p (ball z0 ε)) (hnc : ¬ IsConstantOn p (ball z0 ε)) (hp0 : p z0 ≠ 0) :
  ∃ w ∈ ball z0 ε, |p w| < |p z0| := by sorry
