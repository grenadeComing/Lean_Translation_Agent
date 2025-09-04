import Mathlib

open Complex

noncomputable def f (z : ℂ) : ℂ := (1 : ℂ) / (z ^ 2 + 1) ^ 2

noncomputable def a (n : ℕ) : ℂ :=
  if n % 2 = 0 then (((n / 2 + 1 : ℕ) : ℂ) * (-1 : ℂ) ^ (n / 2)) else (0 : ℂ)

theorem f_analytic_and_power_series :
  AnalyticAt ℂ f 0 ∧
  (∀ z : ℂ, Complex.abs z < 1 → f z = tsum (fun n => a n * z ^ n)) ∧
  (∀ z : ℂ, 1 < Complex.abs z → ¬ Summable (fun n => a n * z ^ n)) := by sorry
