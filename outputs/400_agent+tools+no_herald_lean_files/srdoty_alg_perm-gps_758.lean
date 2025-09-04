import Mathlib

open Equiv

theorem srdoty_alg_perm_gps_758 :
  let alpha : Equiv.Perm (Fin 3) := Equiv.swap (0 : Fin 3) 1
  let beta  : Equiv.Perm (Fin 3) := (Equiv.swap (0 : Fin 3) 1).trans (Equiv.swap (1 : Fin 3) 2)
  let G := Subgroup.closure ({alpha, beta} : Set (Equiv.Perm (Fin 3)))
  G = (⊤ : Subgroup (Equiv.Perm (Fin 3))) := by
  sorry
