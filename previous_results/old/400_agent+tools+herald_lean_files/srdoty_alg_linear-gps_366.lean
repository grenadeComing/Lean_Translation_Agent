import Mathlib

open Matrix

def O (n : ℕ) : Set (Matrix (Fin n) (Fin n) ℝ) :=
  { A | A * Aᵀ = 1 }

def GL_set (n : ℕ) : Set (Matrix (Fin n) (Fin n) ℝ) :=
  { A | IsUnit A }

theorem O_eq_GL_set_inter (n : ℕ) : O n = { A | A ∈ GL_set n ∧ A * Aᵀ = 1 } := by sorry
