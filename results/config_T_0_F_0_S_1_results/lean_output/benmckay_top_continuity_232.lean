import Mathlib

/--
The one-point (Alexandroff) compactification of R^n is homeomorphic to the n-sphere S^n.
We state this as a homeomorphism between the one-point compactification of the Euclidean
space `EuclideanSpace ℝ (Fin n)` (a model for ℝ^n) and the unit sphere in
`EuclideanSpace ℝ (Fin (n + 1))`.
-/
theorem one_point_compactification_Rn_homeomorphic_Sn (n : ℕ) :
  Homeomorph (OnePointCompactification (EuclideanSpace ℝ (Fin n)))
            {x : EuclideanSpace ℝ (Fin (n + 1)) // ‖x‖ = 1} := by sorry