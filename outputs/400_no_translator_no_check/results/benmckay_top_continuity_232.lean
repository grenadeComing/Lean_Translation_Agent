import Mathlib

/-!
One-point compactification of R^n is homeomorphic to S^n.

We state the usual theorem: the one-point compactification of R^n
is homeomorphic to the unit sphere in R^{n+1}.

This file only gives the statement; the proof is `by sorry`.
-/

open TopologicalSpace

/-- A bare type for the one-point compactification (as a set). We do not fix the
topology here; a TopologicalSpace instance on this type is assumed where needed. -/
def OnePointComp (X : Type) : Type := X ⊕ PUnit

/-- The one-point compactification of R^n is homeomorphic to the unit sphere S^n. -/
def one_point_compactification_Rn_homeo_sphere (n : ℕ)
  [TopologicalSpace (OnePointComp (Fin n → ℝ))]
  [PseudoMetricSpace (Fin (n + 1) → ℝ)] :
  Homeomorph (OnePointComp (Fin n → ℝ)) { x : Fin (n + 1) → ℝ // x ∈ Metric.sphere (0 : Fin (n + 1) → ℝ) 1 } := by sorry
