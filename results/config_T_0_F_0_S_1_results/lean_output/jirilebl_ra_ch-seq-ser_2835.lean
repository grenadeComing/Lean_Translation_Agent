import Mathlib

/--
If a series ∑ a_n converges absolutely, then any series obtained by grouping consecutive
terms (according to a strictly increasing sequence of cut points s : ℕ → ℕ with s 0 = 0
and s → ∞) also converges and has the same sum.
-/
theorem grouping_of_absolutely_summable {E : Type*} [NormedAddCommGroup E] {a : ℕ → E}
  (ha : Summable fun n => ‖a n‖) {s : ℕ → ℕ} (hs0 : s 0 = 0) (hs_strict : StrictMono s)
  (hs_tend : Tendsto s atTop atTop) :
  let b : ℕ → E := fun k => ∑ n in Finset.Ico (s k) (s (k+1)), a n
  in Summable b ∧ (tsum a = tsum b) := by sorry
