import Mathlib

/-!
Show that complex conjugation commutes with exp, sin, and cos.
Each statement is left as a `by sorry` proof as requested.
-/

open Complex

/-- Conjugation on complex numbers (explicit definition to avoid relying on any particular name). -/
def complex_conj (z : ℂ) : ℂ := Complex.mk z.re (-z.im)

theorem exp_conj (z : ℂ) : exp (complex_conj z) = complex_conj (exp z) := by sorry

theorem sin_conj (z : ℂ) : sin (complex_conj z) = complex_conj (sin z) := by sorry

theorem cos_conj (z : ℂ) : cos (complex_conj z) = complex_conj (cos z) := by sorry
