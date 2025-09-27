import Mathlib

open BigOperators Filter

theorem grouping_of_absolute_convergence {E : Type*} [NormedAddCommGroup E] {a : ℕ → E} {m : ℕ → ℕ}
  (hm0 : m 0 = 0) (hmono : StrictMono m) (htop : Tendsto m atTop atTop) (h_abs : Summable fun n => ‖a n‖) :
  let b := fun k => ∑ i in Finset.Ico (m k) (m (k+1)), a i in
  Summable b ∧ (∑' k, b k) = (∑' n, a n) := by sorry