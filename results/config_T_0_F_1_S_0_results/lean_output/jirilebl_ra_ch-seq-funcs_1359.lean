import Mathlib

open Set Metric

/-- A sequence of functions f_n converges uniformly on compact subsets to g if for every k : ℕ
    the convergence is uniform on the compact interval [-k, k]. -/
def converges_uniformly_on_compacts (f : ℕ → ℝ → ℝ) (g : ℝ → ℝ) : Prop :=
  ∀ k : ℕ, ∀ ε : ℝ, ε > 0 → ∃ N : ℕ, ∀ n ≥ N, ∀ x ∈ Icc (-(k : ℝ)) (k : ℝ),
    dist (f n x) (g x) < ε

/-- If each f_n is continuous and f_n → g uniformly on compact subsets, then g is continuous. -/
theorem uniform_on_compacts_limit_continuous {f : ℕ → ℝ → ℝ} {g : ℝ → ℝ}
  (hcont : ∀ n, Continuous (f n))
  (hconv : converges_uniformly_on_compacts f g) : Continuous g := by sorry
