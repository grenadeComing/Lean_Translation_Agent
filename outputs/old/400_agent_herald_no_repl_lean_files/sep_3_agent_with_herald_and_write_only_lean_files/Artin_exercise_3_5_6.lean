import Mathlib

/-!
Let V be a vector space spanned by a countable set S.
Prove that every linearly independent subset of V is finite or countable.
-/

theorem Artin_exercise_3_5_6 {K : Type*} [Field K] {V : Type*} [AddCommGroup V] [Module K V]
  (S : Set V) (hS : S.Countable) (hspan : Submodule.span K S = ⊤) :
  ∀ (L : Set V), LinearIndependent K (fun x : L => (x : V)) → L.Finite ∨ L.Countable := by
  sorry
