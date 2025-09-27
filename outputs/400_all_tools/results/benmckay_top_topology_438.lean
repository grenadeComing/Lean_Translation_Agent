import Mathlib
open Filter OrderDual TopologicalSpace Function Set
open scoped Filter Topology

/-- Prove that the closed interval [a,b] ⊆ ℝ is compact for any a ≤ b. -/
theorem isCompact_Icc {a b : ℝ} (h : a ≤ b) : IsCompact (Icc a b) := by sorry
