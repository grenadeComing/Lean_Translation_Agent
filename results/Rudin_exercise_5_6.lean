import Mathlib

/-- Suppose (a) `f` is continuous for `x >= 0`, (b) `f'` exists for `x>0`, (c) `f(0)=0`, (d) `f'` is monotonically increasing. Put `g(x)=f(x)/x (x>0)` and prove that `g` is monotonically increasing. -/
theorem Rudin_exercise_5_6 {f : ℝ → ℝ} :
  ContinuousOn f (Set.Ici 0) →
  (∀ x, 0 < x → HasDerivAt f (deriv f x) x) →
  f 0 = 0 →
  (MonotoneOn (deriv f) (Set.Ioi 0)) →
  MonotoneOn (fun x => f x / x) (Set.Ioi 0) := by sorry
