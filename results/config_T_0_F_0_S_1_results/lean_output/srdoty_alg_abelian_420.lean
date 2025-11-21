import Mathlib

/-!
Statement (no proof):
The generating function for the partition numbers p(n) satisfies
  \sum_{n=0}^\infty p(n) x^n = \prod_{k=1}^\infty 1 / (1 - x^k).
We formalize this as an equality of formal power series in ℤ[[X]].
-/

open BigOperators

noncomputable section

variable (p : ℕ → ℤ)

/-- The generating function for the sequence p (thought of as partition numbers) equals the
infinite product of geometric series factors. -/
theorem partition_generating_function :
  PowerSeries.mk (fun n => p n) = ∏' k : ℕ, (1 - (PowerSeries.X : PowerSeries ℤ) ^ k)⁻¹ := by sorry

end
