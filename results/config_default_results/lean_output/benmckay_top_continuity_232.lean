import Mathlib
open Set Metric TopologicalSpace Filter
open Topology

/-- The one point compactification of R^n is homeomorphic to the sphere S^n. -/
def one_point_compactification_Rn_homeo_Sn (n : ℕ) :
  Homeomorph (OnePoint (Fin n → ℝ)) (Subtype (sphere (0 : Fin (n + 1) → ℝ) 1)) := by sorry
