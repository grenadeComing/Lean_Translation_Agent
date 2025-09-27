import Mathlib

/--
Two standard facts about the real orthogonal groups:
1) SO(n) is a normal subgroup of O(n).
2) The quotient O(n)/SO(n) is (naturally) isomorphic to the unit group of ℤ (i.e. {±1}).

We state these facts for ℝ and leave the proofs as `sorry`.
-/

theorem special_orthogonal_group_normal {n : ℕ} :
  IsNormal (special_orthogonal_group ℝ n) (orthogonal_group ℝ n) := by sorry

theorem orthogonal_group_quotient_is_units_int {n : ℕ} :
  (orthogonal_group ℝ n).quotient (special_orthogonal_group ℝ n) ≃* Units ℤ := by sorry
