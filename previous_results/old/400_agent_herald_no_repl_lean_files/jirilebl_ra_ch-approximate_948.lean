import Mathlib

open Filter
open IntervalIntegral

/-
Suppose f_n -> f uniformly on [a,b] and g is continuous on [a,b].
Prove that lim_{n→∞} ∫_a^b f_n g = ∫_a^b f g.
-/

theorem uniform_on_mul_integral_tendsto {a b : ℝ} {f : ℕ → ℝ → ℝ} {f_lim g : ℝ → ℝ}
  (h_unif : TendstoUniformlyOn f f_lim atTop (Icc a b))
  (hg : ContinuousOn g (Icc a b)) :
  Tendsto (fun n => ∫ x in a..b, (f n x) * g x) atTop (𝓝 (∫ x in a..b, (f_lim x) * g x)) := by sorry
