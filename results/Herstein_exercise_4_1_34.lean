import Mathlib

/-!
# Herstein, Exercise 4.1.34

Let T be the group of 2×2 invertible matrices over Z/2Z.  We state that
T is isomorphic (as a multiplicative group) to S₃, the permutation group on 3
letters.  The proof is omitted and replaced by `sorry`.
-/

noncomputable def herstein_exercise_4_1_34 :
  MulEquiv (Units (Matrix (Fin 2) (Fin 2) (ZMod 2))) (Equiv.Perm (Fin 3)) := by
  sorry
