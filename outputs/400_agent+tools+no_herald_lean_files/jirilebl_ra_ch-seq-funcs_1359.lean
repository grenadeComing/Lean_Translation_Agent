import Mathlib

/-!
Define uniform convergence on compact subsets for sequences f_n : ℝ → ℝ and
state that if each f_n is continuous and f_n → f uniformly on compact sets,
then the limit f is continuous on ℝ.
-/

open Set

def conv_uniform_on_compacts (f_n : ℕ → ℝ → ℝ) (f : ℝ → ℝ) : Prop :=
  ∀ k : ℕ, ∀ ε : ℝ, ε > 0 → ∃ N : ℕ, ∀ n : ℕ, n ≥ N → ∀ x : ℝ, x ∈ Icc (-(k : ℝ)) (k : ℝ) → |f_n n x - f x| < ε

/-- If each f_n is continuous and f_n → f uniformly on each compact [-k,k], then f is continuous. -/
theorem continuous_of_uniform_on_compacts {f_n : ℕ → ℝ → ℝ} {f : ℝ → ℝ}
  (h_cont : ∀ n, Continuous (f_n n))
  (h_conv : conv_uniform_on_compacts f_n f) : Continuous f := by
  sorry
