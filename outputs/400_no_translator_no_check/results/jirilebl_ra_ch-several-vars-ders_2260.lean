import Mathlib

open Matrix

variable {m : Nat} {α : Type _} [Field α]

def S : Matrix (Fin m) (Fin m) α := fun (i j : Fin m) => 0

theorem test (A : Matrix (Fin m) (Fin m) α) : ∀ (i j : Fin m), ((A * S * A.transpose) i j) = 0 := by
  intro i j; simp
