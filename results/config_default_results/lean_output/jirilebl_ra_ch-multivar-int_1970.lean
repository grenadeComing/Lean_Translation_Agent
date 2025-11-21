import Mathlib

open MeasureTheory Topology

variable {n : ℕ}

/-- Let U ⊆ ℝ^n be open and f : U → ℝ continuous. Let G = { (x, f x) | x ∈ U } ⊆ ℝ^{n+1} be the graph of f. Show that G has measure zero in ℝ^{n+1}. -/
theorem graph_has_measure_zero (U : Set (Fin n → ℝ)) (f : (Fin n → ℝ) → ℝ)
  (U_open : IsOpen U) (f_cont : ContinuousOn f U) :
  (MeasureTheory.MeasureSpace.volume : Measure ((Fin n → ℝ) × ℝ)) ({ p : (Fin n → ℝ) × ℝ | p.2 = f p.1 ∧ p.1 ∈ U }) = 0 := by sorry
