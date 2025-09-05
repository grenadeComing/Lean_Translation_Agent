import Mathlib

open Filter

theorem riemann_integral_of_limits_of_subintervals
  {a b : ℝ} {f : ℝ → ℝ} {a_n b_n : ℕ → ℝ}
  (hbound : BoundedOn f (Icc a b))
  (hseq : ∀ n, a < a_n n ∧ a_n n < b_n n ∧ b_n n < b)
  (ha : Tendsto a_n atTop (𝓝 a))
  (hb : Tendsto b_n atTop (𝓝 b))
  (hints : ∀ n, Riemann.integrable_on f (Icc (a_n n) (b_n n))) :
  Riemann.integrable_on f (Icc a b) ∧
  Tendsto (fun n => ∫ x in a_n n..b_n n, f x) atTop (𝓝 (∫ x in a..b, f x)) := by sorry
