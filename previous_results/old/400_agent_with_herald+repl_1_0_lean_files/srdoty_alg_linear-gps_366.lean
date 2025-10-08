import Mathlib

open Matrix

def GL (n : Nat) : Set (Matrix (Fin n) (Fin n) ℝ) := {A | ∃ (B : Matrix (Fin n) (Fin n) ℝ), A ⬝ B = 1 ∧ B ⬝ A = 1}

def O (n : Nat) : Set (Matrix (Fin n) (Fin n) ℝ) := {A | ∃ (B : Matrix (Fin n) (Fin n) ℝ), A ⬝ B = 1 ∧ B ⬝ A = 1 ∧ A ⬝ A.transpose = 1}

theorem O_eq_GL (n : Nat) : O n = {A | A ∈ GL n ∧ A ⬝ A.transpose = 1} := by sorry
