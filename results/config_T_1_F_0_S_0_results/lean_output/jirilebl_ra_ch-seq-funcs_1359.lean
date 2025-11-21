import Mathlib

/-- Uniform convergence on a set `s` for a sequence of functions `f n : ℝ → ℝ` to a limit `g`.
    We use the ε-N definition: for every ε>0 there exists N such that for all n ≥ N and x ∈ s,
    |f n x - g x| ≤ ε. -/

def uniformly_on (f : ℕ → ℝ → ℝ) (g : ℝ → ℝ) (s : Set ℝ) : Prop :=
  ∀ ε : ℝ, ε > 0 → ∃ N : ℕ, ∀ n : ℕ, n ≥ N → ∀ x : ℝ, x ∈ s → abs (f n x - g x) ≤ ε

/-- Convergence uniformly on compact subsets: for every k, uniform convergence on [-k, k]. -/

def uniformly_on_compacts (f : ℕ → ℝ → ℝ) (g : ℝ → ℝ) : Prop :=
  ∀ k : ℕ, uniformly_on f g (Icc (-(k : ℝ)) (k : ℝ))

/-- If each f_n is continuous and f_n → g uniformly on compact subsets, then g is continuous
    on the whole real line. -/

theorem continuous_of_uniform_on_compacts {f : ℕ → ℝ → ℝ} {g : ℝ → ℝ}
  (hcont : ∀ n, Continuous (f n)) (hunif : uniformly_on_compacts f g) :
  Continuous g := by sorry
