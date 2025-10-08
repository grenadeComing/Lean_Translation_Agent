import Mathlib
open Filter OrderDual TopologicalSpace Function Set
open scoped Filter Topology

/-- Prove that [a,b] subset R is compact for any a ≤ b. Save it to: benmckay_top_topology_438.lean -/
theorem is_compact_Icc (a b : ℝ) (h : a ≤ b) : IsCompact (Icc a b) := by sorry