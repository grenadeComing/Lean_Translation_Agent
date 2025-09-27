import Mathlib

open Equiv

def alpha : Equiv.Perm (Fin 3) := Equiv.swap (0 : Fin 3) (1 : Fin 3)

def beta : Equiv.Perm (Fin 3) := (Equiv.swap (0 : Fin 3) (2 : Fin 3)) * (Equiv.swap (0 : Fin 3) (1 : Fin 3))

def G : Subgroup (Equiv.Perm (Fin 3)) := Subgroup.closure ({alpha, beta} : Set (Equiv.Perm (Fin 3)))

theorem srdoty_alg_perm_gps_758 : Subgroup.closure ({alpha, beta} : Set (Equiv.Perm (Fin 3))) = (⊤ : Subgroup (Equiv.Perm (Fin 3))) := by sorry
