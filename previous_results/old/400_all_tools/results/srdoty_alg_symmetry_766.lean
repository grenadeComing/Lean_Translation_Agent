import Mathlib

/-- Let G be a group, n ∈ ℕ, and F a field.
    Any permutation representation δ : G → S_n gives rise to a matrix representation
    ρ : G → GL (Fin n) F by sending g to the permutation matrix P_{δ(g)}.
  -/
theorem permutation_representation_to_GL {G : Type*} [Group G] (n : Nat) (F : Type*) [Field F]
  (δ : G → Equiv.Perm (Fin n)) :
  ∃ (ρ : G → GL (Fin n) F),
    ∀ g, (ρ g : Matrix (Fin n) (Fin n) F) = fun i j => if δ g j = i then (1 : F) else 0 := by sorry
