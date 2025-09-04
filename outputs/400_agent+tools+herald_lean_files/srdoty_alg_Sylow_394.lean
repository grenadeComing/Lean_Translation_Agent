import Mathlib

/-- Let p be a prime. If G has exactly one Sylow p-subgroup (expressed by providing a Unique instance), then that Sylow p-subgroup equals its normalizer, i.e. is normal. -/
theorem sylow_unique_is_normal {G : Type*} [Group G] {p : ℕ} [Fact (Nat.Prime p)] [Unique (Sylow p G)] :
  Subgroup.normalizer ((default : Sylow p G) : Subgroup G) = (⊤ : Subgroup G) := by sorry
