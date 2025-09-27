import Mathlib

open Equiv

-- Any permutation representation δ : G → S_n gives a matrix representation ρ : G → GL_n(F)
-- by sending g to the permutation matrix P_{δ(g)}.

theorem permutation_representation_to_matrix_representation
  {G : Type*} [Group G]
  (n : Nat)
  {F : Type*} [Field F]
  (δ : G → Equiv.Perm (Fin n)) :
  ∃ ρ : G → (Matrix (Fin n) (Fin n) F)ˣ,
    (∀ g, (ρ g : Matrix (Fin n) (Fin n) F) = fun i j => if i = δ g j then (1 : F) else 0) ∧
    ∀ g h, ρ (g * h) = ρ g * ρ h := by sorry
