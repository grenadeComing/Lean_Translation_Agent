import Mathlib

/-- Let α = (0 1) and β = (0 1 2) in Perm (Fin 3), and let G = ⟨α,β⟩. Show that G = S_3 (i.e. the full permutation group on 3 letters). -/

def α : Equiv.Perm (Fin 3) := Equiv.swap (0 : Fin 3) 1

def β : Equiv.Perm (Fin 3) := (Equiv.swap (0 : Fin 3) 2) * (Equiv.swap (0 : Fin 3) 1)

theorem generated_is_S3 : Subgroup.closure ({α, β} : Set (Equiv.Perm (Fin 3))) = (⊤ : Subgroup (Equiv.Perm (Fin 3))) := by sorry
