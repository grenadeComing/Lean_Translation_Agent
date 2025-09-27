import Mathlib

open Set

/-- Example showing that T_infty need not be a topology. -/

def X := Nat

def T_infty : Set (Set X) := { U | Set.Infinite ((univ : Set X) \ U) ∨ ((univ : Set X) \ U) = ∅ ∨ ((univ : Set X) \ U) = (univ : Set X) }

def C1 : Set X := fun n => n % 2 = 0

def C2 : Set X := fun n => n = 0 ∨ (n % 2 = 1 ∧ n ≠ 1)

def U1 : Set X := (univ : Set X) \ C1

def U2 : Set X := (univ : Set X) \ C2

theorem munkres_exercise_13_3b : U1 ∈ T_infty ∧ U2 ∈ T_infty ∧ (U1 ∪ U2) ∉ T_infty := by sorry
