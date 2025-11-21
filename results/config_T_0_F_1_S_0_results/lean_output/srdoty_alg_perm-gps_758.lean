import Mathlib

-- Let α = (1 2) and β = (1 2 3) in S_3, using Fin 3 to represent the set {1,2,3} as {0,1,2}.

open Equiv

def alpha : Equiv.Perm (Fin 3) := Equiv.swap (0 : Fin 3) 1

-- a 3-cycle (0 1 2) can be written as the composition of two transpositions: (0 2) * (0 1)
def beta : Equiv.Perm (Fin 3) := (Equiv.swap (0 : Fin 3) 2) * (Equiv.swap (0 : Fin 3) 1)

def G : Subgroup (Equiv.Perm (Fin 3)) := Subgroup.closure ({alpha, beta} : Set (Equiv.Perm (Fin 3)))

theorem generated_by_alpha_beta_eq_S3 : G = (⊤ : Subgroup (Equiv.Perm (Fin 3))) := by sorry
