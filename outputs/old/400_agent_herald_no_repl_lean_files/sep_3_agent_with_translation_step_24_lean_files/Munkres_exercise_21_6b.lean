import Mathlib

/- Define f_n : [0,1] → ℝ by f_n(x) = x^n. Show the sequence (f_n) does not converge uniformly. -/

open Set
open Filter

/-- The functions f_n on [0,1]. -/
def f (n : ℕ) (x : ℝ) := x ^ n

/-- The pointwise limit g: g(x)=0 for x in [0,1) and g(1)=1. -/
noncomputable def g (x : ℝ) : ℝ := if x = 1 then 1 else 0

theorem not_uniform_convergence :
  ¬(TendstoUniformlyOn (fun n => f n) g atTop (Icc (0:ℝ) 1)) := by
  sorry
