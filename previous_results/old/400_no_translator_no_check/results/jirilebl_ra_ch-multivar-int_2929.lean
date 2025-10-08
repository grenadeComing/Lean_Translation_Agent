import Mathlib

open Set MeasureTheory Topology

variable {n : ℕ}

/-- Every compact convex set in ℝ^n has boundary of Lebesgue measure zero (hence is Jordan measurable). -/
theorem convex_compact_jordan_measurable (s : Set (Fin n → ℝ))
  (hconv : Convex ℝ s)
  (hcomp : IsCompact s) :
  volume (frontier s) = 0 := by sorry
