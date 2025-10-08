import Mathlib

open Set

/-- A sequence f_n : ℝ → ℝ converges uniformly on compact subsets to g if for every
k : ℕ it converges uniformly on the compact interval [-k,k]. -/
def conv_uniform_on_compacts (f : ℕ → ℝ → ℝ) (g : ℝ → ℝ) : Prop :=
  ∀ k : ℕ, ∀ ε : ℝ, ε > 0 → ∃ N : ℕ, ∀ n ≥ N, ∀ x ∈ Icc (-(k : ℝ)) (k : ℝ), abs (f n x - g x) < ε

/-- If each f_n is continuous and f_n → g uniformly on compact subsets, then g is continuous. -/
theorem continuous_of_uniform_on_compacts {f : ℕ → ℝ → ℝ} {g : ℝ → ℝ}
  (h_cont : ∀ n, Continuous (f n))
  (h_conv : conv_uniform_on_compacts f g) :
  Continuous g := by
  -- proof omitted
  sorry
