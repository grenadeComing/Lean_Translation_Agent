import Mathlib

variable {G : Type*} [Group G]

/-- Exercise: If G = <x> is cyclic of order n ≥ 1 then a subgroup H is maximal iff
    H = <x^p> for some prime p dividing n. We express maximality as: H is proper and
    whenever H ≤ K ≤ ⊤ then K = H or K = ⊤. -/
theorem Dummit_Foote_exercise_2_4_16c {x : G} {n : ℕ} (hn : orderOf x = n) (H : Subgroup G) :
  (H ≠ (⊤ : Subgroup G) ∧ ∀ K : Subgroup G, H ≤ K → (K = H ∨ K = (⊤ : Subgroup G)))
    ↔ ∃ p : ℕ, Nat.Prime p ∧ p ∣ n ∧ H = Subgroup.closure ({x ^ p} : Set G) := by sorry
