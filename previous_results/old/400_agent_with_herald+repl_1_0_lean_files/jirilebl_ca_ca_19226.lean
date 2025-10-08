import Mathlib

noncomputable section

open Complex

variable (z : ℂ)

/-- Conjugation commutes with the complex exponential. -/
theorem exp_conj : exp (conj z) = conj (exp z) := by sorry

/-- Conjugation commutes with the complex sine. -/
theorem sin_conj : sin (conj z) = conj (sin z) := by sorry

/-- Conjugation commutes with the complex cosine. -/
theorem cos_conj : cos (conj z) = conj (cos z) := by sorry
