import Mathlib

open Polynomial

theorem Herstein_exercise_5_6_14 {F : Type _} [Field F] {p : ℕ} (hp : CharP F p) (hp_ne : p ≠ 0) (n : ℕ) :
  Polynomial.Separable (((Polynomial.X : Polynomial F) ^ (p ^ n)) - (Polynomial.X : Polynomial F)) := by
  sorry
