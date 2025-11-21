import Mathlib

/-!
Let G be a group, n : ℕ, and F a field. Any permutation representation
δ : G → S_n gives rise to a matrix representation ρ : G → GL_n(F)
by sending g ∈ G to the permutation matrix P_{δ(g)}.
-/

theorem permutation_representation_gives_matrix_representation (G : Type _) [Group G]
  (n : ℕ) (F : Type _) [Field F]
  (δ : G → Equiv.Perm (Fin n)) :
  ∃ (ρ : G → GL (Fin n) F),
    ∀ (g : G) (i j : Fin n),
      (ρ g : Matrix (Fin n) (Fin n) F) i j = if δ g i = j then (1 : F) else 0 := by sorry
