import Mathlib

open Filter Set

/-- If f(x) → L as x → c within S, then a * f(x) → a * L as x → c within S. -/
theorem tendsto_const_mul {S : Set ℝ} {c L a : ℝ} {f : ℝ → ℝ}
  (hf : Tendsto f (nhdsWithin c S) (nhds L)) :
  Tendsto (fun x => a * f x) (nhdsWithin c S) (nhds (a * L)) := by sorry
