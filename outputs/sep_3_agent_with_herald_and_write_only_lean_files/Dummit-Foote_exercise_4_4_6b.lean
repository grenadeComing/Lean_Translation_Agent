import Mathlib

-- There exists a normal subgroup which is not characteristic.
-- Example: the Klein four group V4 has three distinct subgroups of order 2; each is normal but none is characteristic.

theorem exists_normal_not_characteristic :
  ∃ (G : Type*) [Group G], ∃ (H : Subgroup G), IsNormal H ∧ ¬IsCharacteristic H := by
  sorry
