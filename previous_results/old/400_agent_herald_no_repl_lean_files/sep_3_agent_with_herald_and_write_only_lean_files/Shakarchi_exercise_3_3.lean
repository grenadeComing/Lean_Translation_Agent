import Mathlib

/-
Exercise: Show that ∫_{-∞}^{∞} cos x / (x^2 + a^2) dx = π * e^{-a} / a for a > 0.
This file only states the theorem; the proof is omitted.
-/

open Real

theorem integral_cos_div_sq_add {a : ℝ} (ha : 0 < a) :
  ∫ x : ℝ, (Real.cos x) / (x ^ 2 + a ^ 2) = Real.pi * Real.exp (-a) / a := by sorry
