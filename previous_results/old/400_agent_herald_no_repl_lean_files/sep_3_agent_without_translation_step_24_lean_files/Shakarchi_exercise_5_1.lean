import Mathlib

open Complex Set

/-- Placeholder predicate: ``f`` is holomorphic on the set ``s``. -/
def holomorphic_on (f : ℂ → ℂ) (s : Set ℂ) : Prop := True

/-- Shakarchi Exercise 5.1 (Blaschke condition, formal statement).

Suppose f is holomorphic in the unit disc, bounded and not identically zero, and z_n are its
zeros (|z_n| < 1). Then the Blaschke sum ∑_n (1 - |z_n|) is finite.

This file only states the theorem; the proof is omitted (``by sorry''). -/
theorem Shakarchi_exercise_5_1 (f : ℂ → ℂ)
  (hf : holomorphic_on f {z | Complex.abs z < 1})
  (hbounded : ∃ M : ℝ, ∀ z, z ∈ {z | Complex.abs z < 1} → Complex.abs (f z) ≤ M)
  (hnonzero : ¬ (∀ z, z ∈ {z | Complex.abs z < 1} → f z = 0))
  (z : ℕ → ℂ)
  (hz : ∀ n, Complex.abs (z n) < 1)
  (hzzeros : ∀ n, f (z n) = 0) :
  Summable fun n => (1 - Complex.abs (z n)) := by sorry
