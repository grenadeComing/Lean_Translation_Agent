import Mathlib

/-!
Suppose ∑_{n=1}^∞ a_n converges absolutely. Show that for any rearrangement of the series,
the sum remains the same.

We state this for a normed additive commutative group E, a sequence a : ℕ → E, and an
equivalence σ : ℕ ≃ ℕ. The conclusion is that the rearranged series has the same sum.
-/

theorem abs_summable_rearrangement {E : Type*} [NormedAddCommGroup E] {a : ℕ → E}
  (h : Summable fun n => ‖a n‖) (σ : ℕ ≃ ℕ) :
  HasSum (fun n => a (σ n)) (tsum a) := by sorry
