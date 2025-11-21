import Mathlib
open scoped ENNReal NNReal Topology
open Set MeasureTheory Measure Filter Function MeasurableSpace ENNReal

/-- Let m* be the outer measure on R^n. Suppose A,B \subset R^n with m*(B)=0. Prove that m*(A \cup B)=m*(A). -/
lemma outer_measure_union_of_null_right {n : ℕ} (mstar : MeasureTheory.OuterMeasure (Fin n → ℝ)) (A B : Set (Fin n → ℝ)) (hB : mstar B = 0) : mstar (A ∪ B) = mstar A := by sorry
