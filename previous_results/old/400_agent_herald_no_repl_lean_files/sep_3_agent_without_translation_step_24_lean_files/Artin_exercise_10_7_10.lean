import Mathlib

/-
Let R be a ring, with M an ideal of R. Suppose that every element of R which is not in M is a unit of R.
Prove that M is a maximal ideal and that moreover it is the only maximal ideal of R.
-/

theorem Artin_exercise_10_7_10 {R : Type _} [Ring R] {M : Ideal R}
  (h : ∀ x : R, x ∉ M → IsUnit x) :
  M.IsMaximal ∧ (∀ I : Ideal R, I.IsMaximal → I = M) := by sorry
