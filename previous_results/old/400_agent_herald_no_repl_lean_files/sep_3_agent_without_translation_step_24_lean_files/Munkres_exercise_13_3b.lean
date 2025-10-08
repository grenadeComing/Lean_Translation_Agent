import Mathlib

open Set

def T_infty {X : Type _} (Xset : Set X) (U : Set X) : Prop :=
  (¬ Set.Finite (Xset \ U)) ∨ (Xset \ U = ∅) ∨ (Xset \ U = Xset)

theorem Munkres_exercise_13_3b :
  ∃ (U1 U2 : Set ℕ), T_infty (Set.univ : Set ℕ) U1 ∧ T_infty (Set.univ : Set ℕ) U2 ∧ ¬ T_infty (Set.univ : Set ℕ) (U1 ∪ U2) := by
  -- Counterexample: choose complements A,B infinite with finite intersection
  -- A = {n | n = 0 ∨ n % 2 = 0}, B = {n | n = 0 ∨ n % 2 = 1}
  -- then U1 = univ \ A, U2 = univ \ B are in T_infty, but union not.
  sorry
