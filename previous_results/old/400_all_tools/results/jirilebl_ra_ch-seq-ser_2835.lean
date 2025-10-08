import Mathlib

theorem summable_group_of_summable_norm {E : Type _} [NormedAddCommGroup E] {a : ℕ → E} {m : ℕ → ℕ}
  (ha : Summable (fun n => ‖a n‖)) (h0 : m 0 = 0) (hm : StrictMono m) (h_unbounded : ∀ N, ∃ k, m k ≥ N) :
  Summable (fun k => ‖Finset.sum (Finset.range (m (k + 1) - m k)) (fun i => a (m k + i))‖) ∧
  (tsum fun k => Finset.sum (Finset.range (m (k + 1) - m k)) (fun i => a (m k + i))) = tsum fun n => a n := by sorry
