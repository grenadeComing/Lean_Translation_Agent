import Mathlib

/-- Rudin Ex. 5.6

Suppose
  (a) f is continuous for x ≥ 0,
  (b) f' exists for x > 0,
  (c) f(0) = 0,
  (d) f' is monotonically increasing on (0, ∞).

Put g(x) = f(x)/x for x > 0 and prove that g is monotonically increasing on (0, ∞).
-/
theorem Rudin_exercise_5_6 {f f' : ℝ → ℝ}
  (h_cont : ContinuousOn f (Ici 0))
  (h_der : ∀ x, 0 < x → HasDerivAt f (f' x) x)
  (h0 : f 0 = 0)
  (h_mono : Monotone f') :
  MonotoneOn (fun x => f x / x) (Ioi 0) := by sorry
