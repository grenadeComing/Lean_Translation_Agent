import Mathlib

/-
Let V be a vector space which is spanned by a countably infinite set.
Prove that every linearly independent subset of V is finite or countably infinite.
-/

theorem artin_exercise_3_5_6 {K : Type _} [Field K] {V : Type _} [AddCommGroup V] [Module K V]
  (s : Set V) (hs : Countable s) (hspan : Submodule.span K s = ⊤) :
  ∀ t : Set V, LinearIndependent K (fun x : t => (x : V)) → (t.Finite ∨ Countable t) := by
  sorry
