import Mathlib

/-
Let (x_n) be a convergent sequence in ℝ and define y_n := min (x_n) 0.
Then lim_{n→∞} y_n ≤ 0. We state a slightly stronger statement: if x_n → L,
then y_n → min L 0, and in particular min L 0 ≤ 0.
-/

theorem seq_min_nonpos_of_convergent {x : ℕ → ℝ} (L : ℝ) (h : Tendsto x atTop (𝓝 L)) :
  Tendsto (fun n => min (x n) 0) atTop (𝓝 (min L 0)) ∧ min L 0 ≤ 0 := by sorry
