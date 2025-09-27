import Mathlib
open MeasureTheory MeasureTheory.Measure Set Filter Function
open scoped Topology

/-- Every bounded convex set in R^n is Jordan measurable. In Lean4/Mathlib: For any n : ℕ and any set s : Set (Fin n → ℝ), if s is convex over ℝ and bounded, then the frontier (boundary) of s has Lebesgue measure zero. -/
theorem null_frontier_of_convex_of_bounded {n : ℕ} {s : Set (Fin n → ℝ)} (hconv : Convex ℝ s)
    (hbdd : Bornology.IsBounded s) : MeasureTheory.MeasureSpace.volume (frontier s) = 0 := by sorry
