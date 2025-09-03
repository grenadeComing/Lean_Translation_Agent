import Mathlib

/-!
Let G be a finite group, p a prime, P a normal Sylow p-subgroup of G, and H any subgroup of G.
We state the conclusion that P ∩ H is the unique Sylow p-subgroup of H.

We formalize this by assuming P is a p-group and normal in G, and then asserting
that P ⊓ H is a p-group and that every p-subgroup Q of H is contained in P ⊓ H.
-/

universe u
open Subgroup

theorem Dummit_Foote_exercise_4_5_33 {G : Type u} [Group G] [Fintype G] {p : ℕ} [Fact (Nat.Prime p)]
  (P H : Subgroup G)
  (hP_pgroup : IsPGroup p (↥P))
  (hP_normal : ∀ (g : G) {x : G}, x ∈ P → g * x * g⁻¹ ∈ P) :
  IsPGroup p (↥(P ⊓ H)) ∧ ∀ (Q : Subgroup G), Q ≤ H → IsPGroup p (↥Q) → Q ≤ P ⊓ H := by sorry
