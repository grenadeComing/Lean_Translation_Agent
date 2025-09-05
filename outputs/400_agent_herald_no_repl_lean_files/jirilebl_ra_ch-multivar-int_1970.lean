import Mathlib
open MeasureTheory MeasureTheory.Measure Set Function TopologicalSpace Bornology
open scoped Topology Interval ENNReal
open Filter
open MeasureTheory

/-- The graph of a continuous function f : U → ℝ, where U is open in ℝⁿ, has Lebesgue measure zero in ℝ^{n+1}. -/
theorem graph_of_continuous_on_open_has_measure_zero {n : ℕ} {U : Set (Fin n → ℝ)} {f : (Fin n → ℝ) → ℝ}
    (hU : IsOpen U) (hf : ContinuousOn f U) : (volume.prod volume) (graph f) = 0 := by sorry
