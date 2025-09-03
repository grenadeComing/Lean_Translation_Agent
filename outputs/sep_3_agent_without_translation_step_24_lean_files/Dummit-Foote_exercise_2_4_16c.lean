import Mathlib

open Subgroup

variable {G : Type*} [Group G] (x : G) (n : ℕ)

/-- We say a subgroup H is maximal if it is not the whole group and there
    is no intermediate subgroup strictly between H and the whole group. -/
def IsMaximalSubgroup {G : Type*} [Group G] (H : Subgroup G) : Prop :=
  H ≠ (⊤ : Subgroup G) ∧ ∀ K : Subgroup G, H ≤ K → (K = H ∨ K = ⊤)

/-- Exercise: If G = <x> is cyclic of order n ≥ 1 then H is maximal iff
    H = <x^p> for some prime p dividing n. -/
theorem Dummit_Foote_exercise_2_4_16c
  (hn : orderOf x = n) (hcyc : Subgroup.closure ({x} : Set G) = (⊤ : Subgroup G)) (hnpos : 1 ≤ n) :
  ∀ H : Subgroup G, IsMaximalSubgroup H ↔ ∃ p : ℕ, p.Prime ∧ p ∣ n ∧ H = Subgroup.closure ({x ^ p} : Set G) := by sorry
