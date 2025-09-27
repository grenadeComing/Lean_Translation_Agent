import Mathlib

open Set Filter

/-- A sequence f_n converges uniformly on compact subsets if it converges uniformly on each
    interval [-k,k]. We state and prove that if each f_n is continuous and f_n -> g uniformly on
    each compact [-k,k], then g is continuous on ℝ. -/
theorem uniform_on_compacts.continuous_of_uniform_on_compacts
  {f : ℕ → ℝ → ℝ} {g : ℝ → ℝ}
  (hcont : ∀ n, Continuous (f n))
  (h : ∀ k : ℕ, TendstoUniformlyOn (fun n x => f n x) g atTop (Set.Icc (-(k : ℝ)) (k : ℝ))) :
  Continuous g := by sorry
