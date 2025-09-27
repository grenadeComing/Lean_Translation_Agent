import Mathlib

/-- A sequence f_n : ℝ → ℝ converges uniformly on compact subsets to g if for every k : ℕ,
    f_n converges uniformly on the compact interval [-k, k]. -/
def conv_uniform_on_compacts (f : ℕ → ℝ → ℝ) (g : ℝ → ℝ) : Prop :=
  ∀ k : ℕ, ∀ ε > 0, ∃ N : ℕ, ∀ n ≥ N, ∀ x ∈ Set.Icc (-(k : ℝ)) (k : ℝ), |f n x - g x| < ε

/-- If each f n is continuous and f_n → g uniformly on compact subsets, then g is continuous on ℝ. -/
theorem uniform_on_compacts.continuous_limit {f : ℕ → ℝ → ℝ} {g : ℝ → ℝ}
  (hcont : ∀ n, Continuous (f n))
  (hconv : conv_uniform_on_compacts f g) : Continuous g := by sorry
