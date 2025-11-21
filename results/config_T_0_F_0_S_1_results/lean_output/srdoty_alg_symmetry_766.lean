import Mathlib

/-!
Translate: Let G be a group, n : ℕ, and F a field. Any permutation representation
δ : G → S_n gives rise to a matrix representation ρ : G → GL_n(F) by sending
g ∈ G to the permutation matrix P_{δ(g)}.

This file states that fact (no proof).
-/

open Equiv

/-- The permutation matrix associated to a permutation of `Fin n` over a field `F`. -/
def perm_matrix {n : ℕ} {F : Type _} [Field F] (σ : Equiv.Perm (Fin n)) :
  Matrix (Fin n) (Fin n) F :=
fun i j => if i = σ j then (1 : F) else 0

/-- Given a group homomorphism `δ : G →* Equiv.Perm (Fin n)` (a permutation representation),
there exists a group homomorphism `ρ : G →* (Matrix (Fin n) (Fin n) F)ˣ` (a matrix representation)
such that for all `g` the underlying matrix of `ρ g` is the permutation matrix of `δ g`. -/
theorem permutation_rep_to_matrix_rep
  (G : Type _) [Group G]
  (n : ℕ)
  (F : Type _) [Field F]
  (δ : G →* Equiv.Perm (Fin n)) :
  ∃ ρ : G →* (Matrix (Fin n) (Fin n) F)ˣ, ∀ g, (ρ g : Matrix (Fin n) (Fin n) F) = perm_matrix (δ g) :=
by sorry