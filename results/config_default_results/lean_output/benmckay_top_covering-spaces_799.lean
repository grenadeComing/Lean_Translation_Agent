import Mathlib

variable {I X Xtilde : Type _}
variable [TopologicalSpace I] [TopologicalSpace X] [TopologicalSpace Xtilde]

variable (p : Xtilde → X)
variable (phi : Homeomorph Xtilde Xtilde)
variable (h_comm : ∀ x, p (phi x) = p x)

theorem deck_transformation_preserves_path_lifts (γ : I → X) (γtilde : I → Xtilde)
  (h_lift : ∀ t, p (γtilde t) = γ t) : ∀ t, p (phi (γtilde t)) = γ t := by sorry
