import Mathlib

/-!
If X is a connected topological space and there is a covering map p : ℝ → X,
then X is homeomorphic either to ℝ or to the circle S¹.
-/

theorem real_covering_space_of_connected {X : Type _} [TopologicalSpace X]
  (p : Real → X) (hconn : ConnectedSpace X) (hcov : IsCoveringMap p) :
  (Nonempty (Homeomorph X Real)) ∨ (Nonempty (Homeomorph X Circle)) := by sorry
