import Mathlib

/-- A sequence of functions f_n : ℝ → ℝ converges uniformly on compact subsets to f
    iff for every k : ℕ it converges uniformly on the compact interval [-k, k]. -/
def converges_uniformly_on_compacts (fseq : ℕ → ℝ → ℝ) (f : ℝ → ℝ) : Prop :=
  ∀ k : ℕ, ∀ ε : ℝ, ε > 0 → ∃ N : ℕ, ∀ n, n ≥ N → ∀ x ∈ Set.Icc (-(k : ℝ)) (k : ℝ),
    Real.abs (fseq n x - f x) < ε

/-- If each f_n is continuous and f_n → f uniformly on compact subsets, then f is continuous. -/
theorem uniform_on_compacts_limit_continuous {fseq : ℕ → ℝ → ℝ} {f : ℝ → ℝ}
  (h_cont : ∀ n, Continuous (fseq n))
  (h_conv : converges_uniformly_on_compacts fseq f) :
  Continuous f := by sorry
