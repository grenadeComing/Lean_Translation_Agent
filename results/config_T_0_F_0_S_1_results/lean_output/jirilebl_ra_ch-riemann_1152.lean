import Mathlib

open Filter

theorem riemann_integrable_on_of_lim_of_integrable_on_subintervals
  {a b : ℝ} {f : ℝ → ℝ}
  (hbounded : BoundedOn f (Icc a b))
  (hab : a < b)
  (a_n b_n : ℕ → ℝ)
  (h_inside : ∀ n, a < a_n n ∧ a_n n < b_n n ∧ b_n n < b)
  (ha : Tendsto a_n atTop (𝓝 a))
  (hb : Tendsto b_n atTop (𝓝 b))
  (hints : ∀ n, IsRiemannIntegrableOn f (Icc (a_n n) (b_n n))) :
  IsRiemannIntegrableOn f (Icc a b) ∧
  Tendsto (fun n => ∫ x in a_n n..b_n n, f x) atTop (𝓝 (∫ x in a..b, f x)) := by sorry
