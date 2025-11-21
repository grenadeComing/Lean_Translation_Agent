import Mathlib

open Equiv

def alpha : Perm (Fin 3) := Equiv.swap (0 : Fin 3) 1

def beta : Perm (Fin 3) := Equiv.swap (0 : Fin 3) 2 * Equiv.swap (0 : Fin 3) 1

def G : Subgroup (Perm (Fin 3)) := Subgroup.closure ({alpha, beta} : Set (Perm (Fin 3)))

theorem generated_group_eq_S3 : G = (⊤ : Subgroup (Perm (Fin 3))) := by sorry
