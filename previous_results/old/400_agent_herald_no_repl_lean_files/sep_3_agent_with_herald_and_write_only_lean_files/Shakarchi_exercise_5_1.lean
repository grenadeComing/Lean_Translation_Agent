import Mathlib

/-!
Exercise: Prove that if f is holomorphic in the unit disc, bounded and not identically zero,
and z₁, z₂, … are its zeros (|z_k| < 1), then ∑ₙ (1 - |z_n|) < ∞.

This file translates the statement to Lean. The proof is omitted (ending with `by sorry`).
-/

open Complex

theorem Shakarchi_exercise_5_1 {f : ℂ → ℂ} {a : ℕ → ℂ}
  (hf : IsHolomorphicOn f (ball (0 : ℂ) 1))
  (hb : ∃ M, ∀ z ∈ ball (0 : ℂ) 1, |f z| ≤ M)
  (hne : ¬(∀ z ∈ ball (0 : ℂ) 1, f z = 0))
  (hz : ∀ n, a n ∈ ball (0 : ℂ) 1)
  (hroot : ∀ n, f (a n) = 0)
  (hcomplete : ∀ z, z ∈ ball (0 : ℂ) 1 → f z = 0 → ∃ n, a n = z) :
  Summable (fun n => 1 - |a n|) := by sorry
