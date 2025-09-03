import Mathlib

/-!
Exercise: Let P be a normal Sylow p-subgroup of G and let H be any subgroup of G.
Prove that P ∩ H is the unique Sylow p-subgroup of H.

This file states the lemma; proof omitted (:= by sorry).
-/

variable {G : Type _} [Group G] [Fintype G]
variable {p : ℕ} [Fact (Nat.Prime p)]

open Subgroup

/- We state the result in terms of the Sylow predicate `IsSylow` and the
`Subgroup` intersection. The proof is omitted. -/

theorem sylow_normal_inter_unique {P H : Subgroup G}
  (hP : IsSylow p P) (hnormal : P.Normal) :
  IsSylow p (P ⊓ H) ∧
  ∀ (Q : Subgroup H), IsSylow p Q → (Q : Subgroup G) = P ⊓ H := by sorry
