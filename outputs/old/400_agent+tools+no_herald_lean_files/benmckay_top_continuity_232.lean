import Mathlib

open TopologicalSpace

/-- The one-point compactification of R^n (written as `WithTop (EuclideanSpace ℝ (Fin n))`) is
    homeomorphic to the n-sphere seen as the unit sphere in R^{n+1}. -/
def one_point_compactification_Rn_homeo_Sn (n : ℕ)
  [TopologicalSpace (EuclideanSpace ℝ (Fin n))]
  [TopologicalSpace ({ x : EuclideanSpace ℝ (Fin (n + 1)) // ‖x‖ = 1 } : Type _)] :
  Homeomorph (WithTop (EuclideanSpace ℝ (Fin n))) ({ x : EuclideanSpace ℝ (Fin (n + 1)) // ‖x‖ = 1 }) := by
  sorry
