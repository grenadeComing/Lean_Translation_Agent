import Mathlib
open Set Metric TopologicalSpace Function
open Topology OnePoint

/-- The Euclidean plane R^2 is homeomorphic to any open ball in R^2. More precisely: for any center a : R × R and radius r > 0, there exists a homeomorphism between R × ℝ (the plane) and the open metric ball centered at a with radius r. -/
theorem euclidean_plane_homeo_ball (a : ℝ × ℝ) (r : ℝ) : Nonempty (Homeomorph (ℝ × ℝ) (ball a r)) := by sorry
