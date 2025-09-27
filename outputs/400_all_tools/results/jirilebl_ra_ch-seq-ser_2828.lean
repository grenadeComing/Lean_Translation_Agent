import Mathlib
open Filter Finset Function
open scoped Topology
open MulOpposite

/-- Let E be a normed_add_comm_group (or a normed space) over ℝ (or any normed field) and a : ℕ → E. Suppose the series ∑' n, a n is absolutely convergent, i.e. Summable (fun n => ‖a n‖). Show that for any bijection σ : ℕ ≃ ℕ (a rearrangement of indices), the rearranged series ∑' n, a (σ n) is summable and has the same sum: tsum (a ∘ σ) = tsum a. End the Lean statement with := by sorry. -/
theorem tsum_reindex_eq_of_summable_norm {E : Type*} [NormedAddCommGroup E] (a : ℕ → E)
    (h : Summable fun n => ‖a n‖) (σ : ℕ ≃ ℕ) :
    tsum (a ∘ σ) = tsum a := by sorry
