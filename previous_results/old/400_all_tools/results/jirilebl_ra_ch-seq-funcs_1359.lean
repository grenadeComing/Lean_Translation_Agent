import Mathlib

/-- A sequence of functions f_n : ℝ → ℝ converges uniformly on compact subsets to g
    if for every k ∈ ℕ the sequence converges uniformly on the closed interval [-k,k]. -/
def uniform_on_compacts (f : ℕ → ℝ → ℝ) (g : ℝ → ℝ) : Prop :=
  ∀ k : ℕ, ∀ ε > 0, ∃ N : ℕ, ∀ n ≥ N, ∀ x ∈ Set.Icc (-(k : ℝ)) (k : ℝ), |f n x - g x| < ε

/-- If each f_n is continuous and f_n → g uniformly on compact subsets, then g is continuous. -/
theorem continuous_of_uniform_on_compacts {f : ℕ → ℝ → ℝ} {g : ℝ → ℝ}
  (h_cont : ∀ n, Continuous (f n)) (h_unif : uniform_on_compacts f g) :
  Continuous g := by sorry
