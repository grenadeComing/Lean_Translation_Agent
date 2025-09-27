import Mathlib

open Topology

variable {ι : Type _} {X : ι → Type _} [∀ i, TopologicalSpace (X i)]

lemma Munkres_exercise_32_2c (h : NormalSpace (∀ i, X i)) (hne : ∀ i, Nonempty (X i)) : ∀ i, NormalSpace (X i) := by sorry
