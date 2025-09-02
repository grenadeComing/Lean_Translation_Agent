import Mathlib

open Complex

/-- Shakarchi, Complex Analysis, Ex. 5.1 (statement only).

If f is holomorphic in the unit disc, bounded and not identically zero,
and z₁, z₂, ... are its zeros (|z_k| < 1), then
∑ₙ (1 - |zₙ|) < ∞.
-/
theorem Shakarchi_exercise_5_1 (f : ℂ → ℂ) (hf_hol : Prop) (hf_bdd : Prop) (hf_nonzero : Prop)
  (z : ℕ → ℂ) (hz_zero : ∀ n, f (z n) = 0) (hz_unit : ∀ n, Complex.abs (z n) < 1) :
  Summable fun n => (1 : ℝ) - Complex.abs (z n) := by sorry
