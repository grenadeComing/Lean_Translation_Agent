-- Import Mathlib
import Mathlib

-- A sequence converges uniformly on compact subsets if it converges uniformly on every compact interval [-k, k].
/-- f : ℕ → ℝ → ℝ is a sequence of functions, and g : ℝ → ℝ is its limit candidate. -/
def converges_uniformly_on_compact_subsets (f : ℕ → ℝ → ℝ) (g : ℝ → ℝ) : Prop :=
  ∀ k : ℕ, ∀ ε > 0, ∃ N : ℕ, ∀ n ≥ N, ∀ x ∈ Set.Icc (-(k : ℝ)) k, |f n x - g x| ≤ ε

-- If each f n is continuous and f_n converges uniformly on compact subsets to g, then g is continuous on ℝ.
 theorem limit_continuous_of_uniform_on_compact_subsets
   (f : ℕ → ℝ → ℝ) (g : ℝ → ℝ)
   (h_uniform : converges_uniformly_on_compact_subsets f g)
   (h_cont : ∀ n, Continuous (f n)) :
   Continuous g := by
  -- proof omitted
  sorry
