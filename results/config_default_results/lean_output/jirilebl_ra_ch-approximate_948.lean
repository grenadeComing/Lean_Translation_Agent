import Mathlib

/-- Suppose f_n -> f uniformly on [a,b] and g is continuous on [a,b].
Prove that lim_{n->\infty} \int_a^b f_n * g = \int_a^b f * g. -/
theorem tendsto_integral_mul_of_uniform_on (a b : ℝ) (f : ℕ → ℝ → ℝ) (f_lim g : ℝ → ℝ)
  (h_unif : TendstoUniformlyOn f f_lim (atTop : Filter ℕ) (Set.Icc a b)) (hg : ContinuousOn g (Set.Icc a b)) :
  Filter.Tendsto (fun n => ∫ x in a..b, (f n x) * g x) (atTop : Filter ℕ) (nhds (∫ x in a..b, f_lim x * g x)) := by sorry
