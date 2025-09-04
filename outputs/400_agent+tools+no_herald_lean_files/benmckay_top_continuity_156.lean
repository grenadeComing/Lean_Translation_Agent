import Mathlib

open Metric

/-!
# Homeomorphism between R^2 and an open ball in R^2

We state that for any center `a : ℝ × ℝ` and radius `r > 0`, the Euclidean plane
`ℝ × ℝ` is homeomorphic to the open ball centered at `a` of radius `r`.
-/

def homeomorph_R2_open_ball (a : ℝ × ℝ) (r : ℝ) (hr : 0 < r) :
  Homeomorph (ℝ × ℝ) {x : ℝ × ℝ // dist x a < r} :=
by sorry
