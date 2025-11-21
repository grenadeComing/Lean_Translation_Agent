import Mathlib

/--
Suppose f_n → f uniformly on [a,b] and g is continuous on [a,b].
Then lim_{n→∞} ∫_a^b f_n * g = ∫_a^b f * g.

This statement assumes each f n is continuous on the closed interval so that the integrals are defined.
-/
theorem uniform_integral_mul_tendsto {a b : ℝ} (f : ℕ → ℝ → ℝ) (f_lim : ℝ → ℝ) (g : ℝ → ℝ)
  (hab : a ≤ b)
  (hcont_fn : ∀ n, ContinuousOn (f n) (Set.Icc a b))
  (hconv : TendstoUniformlyOn (fun n => f n) f_lim atTop (Set.Icc a b))
  (hg : ContinuousOn g (Set.Icc a b)) :
  Tendsto (fun n => IntervalIntegral.integral (fun x => (f n x) * g x) a b) atTop
    (nhds (IntervalIntegral.integral (fun x => f_lim x * g x) a b)) := by sorry