import Mathlib

open Set

/-- The collection T_inf on a type X: a subset U is in T_inf if the complement
    of U is infinite, or empty, or all of X. -/
def T_inf (X : Type) : Set (Set X) :=
  { U | Set.Infinite ((univ : Set X) \ U) ∨ ((univ : Set X) \ U) = (\empty : Set X) ∨ ((univ : Set X) \ U) = (univ : Set X) }

/-- A simple family of subsets of ℕ: U n = { m | 1 ≤ m ≤ n } (so U 0 = ∅). -/
def U (n : ℕ) : Set ℕ := { m | 1 ≤ m ∧ m ≤ n }

def s_range : Set (Set ℕ) := Set.range U

/-- Counterexample: the family s_range consists of sets each of which has an
    infinite complement, but the union ⋃₀ s_range = {1,2,3,...} has finite
    nonempty complement {0}, so the union is not in T_inf. -/
theorem Munkres_exercise_13_3b : ∃ (s : Set (Set ℕ)), (∀ U ∈ s, U ∈ T_inf ℕ) ∧ Set.sUnion s ∉ T_inf ℕ := by sorry
