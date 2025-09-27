import Mathlib

/-!
Statement: The only topological spaces with ℝ as a covering space are ℝ and S¹.
We state this in the following form: if p : ℝ → X is a covering map and X is connected,
then X is homeomorphic to ℝ or to a circle (ℝ modulo a discrete cyclic subgroup).

This file contains only the statement; the proof is omitted (:= by sorry).
-/

open TopologicalSpace

theorem real_covering_space_classification {X : Type*} [TopologicalSpace X]
  (p : Real → X) (h_cover : Prop) (h_conn : Prop) :
  h_cover → h_conn →
  (Nonempty (Homeomorph Real X)) ∨
  (∃ (α : ℝ), α > 0 ∧ Nonempty (Homeomorph X (Real ⧸ AddSubgroup.closure ({α} : Set ℝ)))) := by sorry
