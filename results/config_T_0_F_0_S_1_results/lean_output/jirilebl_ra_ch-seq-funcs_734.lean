import Mathlib

theorem riemann_integrable_of_uniform_limit {a b : ℝ} {f : ℝ → ℝ} {f_n : ℕ → ℝ → ℝ}
  (hab : a ≤ b)
  (h_int : ∀ n, RiemannIntegrableOn (f_n n) (Set.Icc a b))
  (h_unif : TendstoUniformlyOn (fun n => f_n n) f atTop (Set.Icc a b)) :
  RiemannIntegrableOn f (Set.Icc a b) ∧
    Tendsto (fun n => ∫ x in a..b, f_n n) atTop (𝓝 (∫ x in a..b, f x)) := by sorry