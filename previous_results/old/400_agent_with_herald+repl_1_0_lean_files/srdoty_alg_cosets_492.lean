import Mathlib

variable {G : Type _} [Group G]

variable (H K : Subgroup G)
variable (m n : Nat) [Fintype H] [Fintype K]

variable (hcardH : Fintype.card H = m) (hcardK : Fintype.card K = n)
variable (hg : Nat.gcd m n = 1)

theorem subgroups_inter_trivial : (H ⊓ K : Subgroup G) = (⊥ : Subgroup G) := by sorry
