import Mathlib

variable {E : Type _} [NormedAddCommGroup E]

/-- Grouping function: the k-th grouped term is the sum of a_i for i in [m k, m (k+1)). -/
def b_of_grouping (a : ℕ → E) (m : ℕ → ℕ) (k : ℕ) : E :=
  (Finset.Ico (m k) (m (k + 1))).sum fun i => a i

/-- If ∑ ‖a n‖ converges, then any grouping of the terms of ∑ a n (given by a strictly
increasing sequence of cut indices `m : ℕ → ℕ` with `m 0 = 0`) produces a series which
also converges and has the same sum. -/
theorem abs_summable.grouping_summable_tsum {a : ℕ → E} (h : Summable fun n => ‖a n‖)
  {m : ℕ → ℕ} (hm : StrictMono m) (hm0 : m 0 = 0) :
  Summable (b_of_grouping a m) ∧ tsum (b_of_grouping a m) = tsum a := by
  sorry
