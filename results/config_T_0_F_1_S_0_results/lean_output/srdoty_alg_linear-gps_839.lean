import Mathlib

-- Define the matrices E(t) = [[1, t],[0,1]] and the set G = {E t | t ∈ F}, then state the group properties.

def E {F : Type*} [Field F] (t : F) : Matrix (Fin 2) (Fin 2) F :=
  fun i j =>
    if i = 0 ∧ j = 0 then (1 : F)
    else if i = 0 ∧ j = 1 then t
    else if i = 1 ∧ j = 0 then (0 : F)
    else (1 : F)

/-- The set G of all E(t). -/

def G {F : Type*} [Field F] : Set (Matrix (Fin 2) (Fin 2) F) := fun M => ∃ t, M = E (t : F)

theorem srdoty_alg_linear_gps_839 {F : Type*} [Field F] :
  (∀ a b : F, ∃ c : F, E (a) * E (b) = E c) ∧ (E (0 : F) = (1 : Matrix (Fin 2) (Fin 2) F)) ∧ (∀ a : F, ∃ b : F, E a * E b = 1) := by sorry
