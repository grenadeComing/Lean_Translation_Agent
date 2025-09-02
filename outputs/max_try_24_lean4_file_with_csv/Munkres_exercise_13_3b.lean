import Mathlib

open Set

/-- On X = ℕ, let T_infty be the collection of subsets U whose complement is infinite, or empty, or all of X. -/
def T_infty : Set (Set ℕ) := { U | Set.Infinite (Set.univ \ U) ∨ (Set.univ \ U) = ∅ ∨ (Set.univ \ U) = (Set.univ : Set ℕ) }

/-- Specific sets: odds and positive evens. -/
def U_odd : Set ℕ := { n | n % 2 = 1 }
def V_pos_even : Set ℕ := { n | n ≠ 0 ∧ n % 2 = 0 }

/-- Exercise (Munkres 13.3(b)). There exist U, V ∈ T_infty whose union is not in T_infty. -/
theorem Munkres_exercise_13_3b :
  ∃ U V : Set ℕ, U ∈ T_infty ∧ V ∈ T_infty ∧ (U ∪ V) ∉ T_infty := by
  sorry
