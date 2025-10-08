import Mathlib

/-!
Let ε > 0, let p(z) be a nonconstant complex polynomial, or more generally a
nonconstant power series converging in { z ∈ ℂ | |z - z0| < ε }, and suppose
p(z0) ≠ 0. Then there exists w in { z ∈ ℂ | |z - z0| < ε } such that |p(w)| < |p(z0)|.

We state a general analytic version: any nonconstant holomorphic function on
an open disk which does not vanish at the center cannot have a local minimum
of the modulus at that center; hence there exists a point in the disk with
smaller modulus.
-/

open Set Metric Complex

theorem exists_point_with_smaller_modulus {ε : ℝ} {z0 : ℂ} (hε : 0 < ε) (f : ℂ → ℂ)
  (hf : IsHolomorphicOn f (ball z0 ε)) (h_nonconst : ¬IsConstantOn (ball z0 ε) f)
  (hf0 : f z0 ≠ 0) : ∃ w ∈ ball z0 ε, |f w| < |f z0| := by sorry
