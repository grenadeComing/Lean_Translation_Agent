import Mathlib

open Nat

/-!
We state: If G is a finite group in which every element has order a power of a fixed prime p,
then |G| = p^r for some integer r ≥ 1 (assuming the group is nontrivial).
-/

variable {G : Type*} [Group G] [Fintype G]

theorem card_pow_prime_of_all_elements_have_p_power_order {p : ℕ} (hp : p.Prime)
  (h_orders : ∀ g : G, ∃ k : ℕ, orderOf g = p ^ k)
  (h_card_gt_one : (Fintype.card G) > 1) :
  ∃ r : ℕ, 1 ≤ r ∧ Fintype.card G = p ^ r := by sorry
