import Mathlib
open Filter Topology Uniformity

/-- Define: a sequence f_n : ℝ → ℝ converges uniformly on compact subsets if for every k ∈ ℕ the sequence f_n converges uniformly on [-k,k]. Prove that if f_n are continuous and converge uniformly on compact subsets, then the limit is continuous on ℝ. Translate to Lean4: give a theorem stating that for f : ℕ → ℝ → ℝ and g : ℝ → ℝ, if each f n is Continuous and for every k : ℕ, f_n → g uniformly on Set.Icc (-(k : ℝ)) (k : ℝ) (i.e. ∀ ε>0 ∃N ∀ m≥N ∀ x in Icc, abs (f m x - g x) < ε), then g is Continuous. End the statement with := by sorry. -/
theorem continuous_of_tendsto_uniformlyOn_compact_subsets {f : ℕ → ℝ → ℝ} {g : ℝ → ℝ}
    (hf : ∀ n, Continuous (f n)) (hfg : ∀ k, TendstoUniformlyOn f g atTop (Set.Icc (-k) k)) :
    Continuous g := by sorry
