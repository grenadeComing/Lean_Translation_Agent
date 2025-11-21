import Mathlib

open PowerSeries

variable (p : ℕ → ℕ)
variable [TopologicalSpace (PowerSeries ℚ)]

/-- The generating function for the partition numbers p(n). -/
theorem partition_generating_function :
  PowerSeries.mk (fun n => (p n : ℚ)) = ∏' (k : ℕ), (1 - (PowerSeries.X : PowerSeries ℚ) ^ k)⁻¹ := by sorry
