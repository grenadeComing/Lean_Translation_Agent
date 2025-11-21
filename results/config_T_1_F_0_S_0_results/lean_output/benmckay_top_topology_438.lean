import Mathlib

/-- The closed interval [a, b] in ℝ is compact whenever a ≤ b. -/
theorem compact_Icc {a b : ℝ} (h : a ≤ b) : IsCompact (Set.Icc a b) := by sorry