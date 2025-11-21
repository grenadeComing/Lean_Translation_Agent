import Mathlib

open Matrix

def D (n : Nat) (R : Type*) [CommRing R] : Set ((Matrix (Fin n) (Fin n) R)ˣ) :=
  { A | ∀ i j : Fin n, i ≠ j → (A : Matrix (Fin n) (Fin n) R) i j = 0 }

def D_is_subgroup (n : Nat) (R : Type*) [CommRing R] :
  Subgroup ((Matrix (Fin n) (Fin n) R)ˣ) := by
  sorry
