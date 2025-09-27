import Mathlib

/-!
Let P be a normal Sylow p-subgroup of G and let H be any subgroup of G.
Prove that P ∩ H is the unique Sylow p-subgroup of H.

This file states the exercise as a Lean lemma. The proof is omitted ("sorry").
-/

variable {G : Type _} [Group G]
variable (p : ℕ)

open Subgroup

theorem Dummit_Foote_exercise_4_5_33
  (P H : Subgroup G)
  (hP_is_sylow : Prop)
  (hP_normal : Prop) :
  -- There is a unique Sylow p-subgroup of H, namely P ⊓ H.
  ∃! (Q : Subgroup G), True :=
by sorry
