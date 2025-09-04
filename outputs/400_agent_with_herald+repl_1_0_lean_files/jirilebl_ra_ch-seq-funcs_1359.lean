import Mathlib

/-- A sequence f_n converges uniformly on compact subsets to g if for every k, it
converges uniformly on the compact interval [-k,k]. -/
def uniform_on_compacts (f : ℕ → ℝ → ℝ) (g : ℝ → ℝ) : Prop :=
  ∀ k : ℕ, ∀ ε : ℝ, ε > 0 → ∃ N : ℕ, ∀ n ≥ N, ∀ x ∈ Set.Icc (-(k : ℝ)) (k : ℝ),
    abs (f n x - g x) < ε

/-- If each f_n is continuous and f_n → g uniformly on compact subsets, then g is continuous on ℝ. -/
theorem uniform_on_compacts_limit_continuous {f : ℕ → ℝ → ℝ} {g : ℝ → ℝ}
  (h_cont : ∀ n, Continuous (f n))
  (h_conv : uniform_on_compacts f g) : Continuous g := by sorry
