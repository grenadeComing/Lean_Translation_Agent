import Mathlib
open Equiv

/-- Let α = (1 2) and β = (1 2 3) in S_3, and let G = ⟨α, β⟩. Show that G = S_3. -/

def alpha : Perm (Fin 3) := swap (0 : Fin 3) 1

def beta : Perm (Fin 3) := (swap (0 : Fin 3) 1).trans (swap 1 2)

theorem generated_by_alpha_beta_eq_S3 :
  Subgroup.closure ({alpha, beta} : Set (Perm (Fin 3))) = (⊤ : Subgroup (Perm (Fin 3))) := by sorry
